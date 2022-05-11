part of 'cat_bloc.dart';

@freezed
abstract class CatEvent with _$CatEvent {

  factory CatEvent.getCat({
    required String animalType, required int amount
  }) = _GetCat;
}
