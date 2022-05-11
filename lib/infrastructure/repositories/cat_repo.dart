import 'package:cat_trivia/domain/cat/cat_facade.dart';
import 'package:cat_trivia/domain/cat/failures_cat.dart';
import 'package:cat_trivia/infrastructure/apis/cat_apis.dart';
import 'package:cat_trivia/infrastructure/core/exceptions.dart';
import 'package:cat_trivia/infrastructure/models/cat/cat_model.dart';
import 'package:cat_trivia/main.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

class CatRepo implements CatFacade {
  final GetCatService _getCatService;

  CatRepo(this._getCatService);

  @override
  Future<Either<CatFailure, CatModel>> getCat(
      String animalType, int amount) async {
    try {
      final res = await _getCatService.getCat(animalType, amount);
      p(res.body);
      p(res.body is CatModel);
      if (res.isSuccessful) {
        assert(res.body != null);
        CatModel? catModel = CatModel.fromJson(res.bodyString);
        if (catModel != null) {
          return right(catModel);
        } else {
          return left(Unknown(message: 'unknown_error'.tr()));
        }
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}