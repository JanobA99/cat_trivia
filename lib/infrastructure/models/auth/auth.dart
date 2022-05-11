import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth.g.dart';


abstract class AuthModel implements Built<AuthModel, AuthModelBuilder> {
  String? get username;
  String? get email;
  String? get password;
  String? get verifyId;
  String? get code;

  AuthModel._();
  factory AuthModel([Function(AuthModelBuilder b) updates]) = _$AuthModel;

  static Serializer<AuthModel> get serializer => _$authModelSerializer;
}


