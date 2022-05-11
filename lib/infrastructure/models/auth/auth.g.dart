// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthModel> _$authModelSerializer = new _$AuthModelSerializer();

class _$AuthModelSerializer implements StructuredSerializer<AuthModel> {
  @override
  final Iterable<Type> types = const [AuthModel, _$AuthModel];
  @override
  final String wireName = 'AuthModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verifyId;
    if (value != null) {
      result
        ..add('verifyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AuthModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'verifyId':
          result.verifyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthModel extends AuthModel {
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? verifyId;
  @override
  final String? code;

  factory _$AuthModel([void Function(AuthModelBuilder)? updates]) =>
      (new AuthModelBuilder()..update(updates))._build();

  _$AuthModel._(
      {this.username, this.email, this.password, this.verifyId, this.code})
      : super._();

  @override
  AuthModel rebuild(void Function(AuthModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthModelBuilder toBuilder() => new AuthModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthModel &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        verifyId == other.verifyId &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, username.hashCode), email.hashCode),
                password.hashCode),
            verifyId.hashCode),
        code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthModel')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password)
          ..add('verifyId', verifyId)
          ..add('code', code))
        .toString();
  }
}

class AuthModelBuilder implements Builder<AuthModel, AuthModelBuilder> {
  _$AuthModel? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _verifyId;
  String? get verifyId => _$this._verifyId;
  set verifyId(String? verifyId) => _$this._verifyId = verifyId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  AuthModelBuilder();

  AuthModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _verifyId = $v.verifyId;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthModel;
  }

  @override
  void update(void Function(AuthModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthModel build() => _build();

  _$AuthModel _build() {
    final _$result = _$v ??
        new _$AuthModel._(
            username: username,
            email: email,
            password: password,
            verifyId: verifyId,
            code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
