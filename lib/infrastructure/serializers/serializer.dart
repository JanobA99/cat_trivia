import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cat_trivia/infrastructure/models/cat/cat_model.dart';

part 'serializer.g.dart';

@SerializersFor([

  CatModel,
  Status

])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
