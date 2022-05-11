import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cat_trivia/infrastructure/serializers/serializer.dart';

part 'cat_model.g.dart';

abstract class CatModel implements Built<CatModel, CatModelBuilder> {
  CatModel._();

  factory CatModel([Function(CatModelBuilder b) updates]) = _$CatModel;

  @BuiltValueField(wireName: 'status')
  Status? get status;
  @BuiltValueField(wireName: '_id')
  String? get id;
  @BuiltValueField(wireName: '__v')
  int? get v;
  @BuiltValueField(wireName: 'text')
  String? get text;
  @BuiltValueField(wireName: 'source')
  String? get source;
  @BuiltValueField(wireName: 'updatedAt')
  String? get updatedAt;
  @BuiltValueField(wireName: 'type')
  String? get type;
  @BuiltValueField(wireName: 'createdAt')
  String? get createdAt;
  @BuiltValueField(wireName: 'deleted')
  bool? get deleted;
  @BuiltValueField(wireName: 'used')
  bool? get used;
  @BuiltValueField(wireName: 'user')
  String? get user;

  static CatModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CatModel.serializer, json.decode(jsonString));
  }

  static Serializer<CatModel> get serializer => _$catModelSerializer;
}

abstract class Status implements Built<Status, StatusBuilder> {
  Status._();

  factory Status([Function(StatusBuilder b) updates]) = _$Status;

  @BuiltValueField(wireName: 'verified')
  bool? get verified;
  @BuiltValueField(wireName: 'sentCount')
  int? get sentCount;

  static Status? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Status.serializer, json.decode(jsonString));
  }

  static Serializer<Status> get serializer => _$statusSerializer;
}

