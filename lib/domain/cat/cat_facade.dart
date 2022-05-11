import 'package:cat_trivia/domain/cat/failures_cat.dart';
import 'package:cat_trivia/infrastructure/models/cat/cat_model.dart';
import 'package:dartz/dartz.dart';

abstract class CatFacade {
  Future<Either<CatFailure, CatModel>> getCat(String animalType, int amount) ;
}