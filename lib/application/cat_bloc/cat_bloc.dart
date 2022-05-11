import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cat_trivia/infrastructure/models/cat/cat_model.dart';
import 'package:cat_trivia/infrastructure/repositories/cat_repo.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'cat_bloc.freezed.dart';

part 'cat_event.dart';

part 'cat_state.dart';

class CatBloc extends Bloc<CatEvent, CatState> {
  final CatRepo _catRepo;

  CatBloc(this._catRepo) : super(const _SignInState()) {
    on<_GetCat>(_getCat);
    on<_SaveFact>(_saveFact);
    on<_GetFactHistory>(_getFactHistory);
  }

  Future<void> _getCat(
    _GetCat _getCat,
    Emitter<CatState> emit,
  ) async {
    EasyLoading.show();
    final res = await _catRepo.getCat(_getCat.animalType, _getCat.amount);
    res.fold((l) async {
      EasyLoading.showError(l.message);
      return;
    }, (r) async {
      EasyLoading.dismiss();
      return emit(state.copyWith(catModel: r));
    });
  }

  Future<void> _saveFact(
    _SaveFact _saveFact,
    Emitter<CatState> emit,
  ) async {
    EasyLoading.show();
    var box = await Hive.openBox('myBox');
    String? name;
    CatsModel? catsModel;
    name = await box.get("saved_cats");
    if (name != null && name.isNotEmpty) {
      catsModel = CatsModel.fromJson(name);
      if (catsModel != null) {
        List<CatModel> _cats = catsModel.cats.toList();
        if (_cats
                .indexWhere((element) => element.id == _saveFact.catModel.id) ==
            -1) {
          _cats.add(_saveFact.catModel);
        }
        catsModel = CatsModel((p0) => p0..cats = _cats.build().toBuilder());
      } else {
        catsModel = CatsModel((p0) =>
            p0..cats = <CatModel>[_saveFact.catModel].build().toBuilder());
      }
    } else {
      catsModel = CatsModel((p0) =>
          p0..cats = <CatModel>[_saveFact.catModel].build().toBuilder());
    }
    await box.put("saved_cats", catsModel.toJson());
    emit(state.copyWith(catsModel: catsModel));
    EasyLoading.showSuccess("success".tr());
  }

  Future<void> _getFactHistory(
    _GetFactHistory _getFactHistory,
    Emitter<CatState> emit,
  ) async {
    EasyLoading.show();
    var box = await Hive.openBox('myBox');
    String? name;
    CatsModel? catsModel;
    name = await box.get("saved_cats");
    if (name != null && name.isNotEmpty) {
      catsModel = CatsModel.fromJson(name);
      if (catsModel != null) {
        emit(state.copyWith(catsModel: catsModel));
      }
    }
    EasyLoading.dismiss();
  }
}
