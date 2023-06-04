// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreUser _$StoreUserFromJson(Map<String, dynamic> json) {
  return _StoreUser.fromJson(json);
}

/// @nodoc
mixin _$StoreUser {
  String? get username => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;
  String? get userPhone => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  bool? get userAnonimus => throw _privateConstructorUsedError;
  int? get userFirebase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreUserCopyWith<StoreUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreUserCopyWith<$Res> {
  factory $StoreUserCopyWith(StoreUser value, $Res Function(StoreUser) then) =
      _$StoreUserCopyWithImpl<$Res, StoreUser>;
  @useResult
  $Res call(
      {String? username,
      String? userEmail,
      String? userPhone,
      String? gender,
      bool? userAnonimus,
      int? userFirebase});
}

/// @nodoc
class _$StoreUserCopyWithImpl<$Res, $Val extends StoreUser>
    implements $StoreUserCopyWith<$Res> {
  _$StoreUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? userEmail = freezed,
    Object? userPhone = freezed,
    Object? gender = freezed,
    Object? userAnonimus = freezed,
    Object? userFirebase = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userAnonimus: freezed == userAnonimus
          ? _value.userAnonimus
          : userAnonimus // ignore: cast_nullable_to_non_nullable
              as bool?,
      userFirebase: freezed == userFirebase
          ? _value.userFirebase
          : userFirebase // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreUserCopyWith<$Res> implements $StoreUserCopyWith<$Res> {
  factory _$$_StoreUserCopyWith(
          _$_StoreUser value, $Res Function(_$_StoreUser) then) =
      __$$_StoreUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? userEmail,
      String? userPhone,
      String? gender,
      bool? userAnonimus,
      int? userFirebase});
}

/// @nodoc
class __$$_StoreUserCopyWithImpl<$Res>
    extends _$StoreUserCopyWithImpl<$Res, _$_StoreUser>
    implements _$$_StoreUserCopyWith<$Res> {
  __$$_StoreUserCopyWithImpl(
      _$_StoreUser _value, $Res Function(_$_StoreUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? userEmail = freezed,
    Object? userPhone = freezed,
    Object? gender = freezed,
    Object? userAnonimus = freezed,
    Object? userFirebase = freezed,
  }) {
    return _then(_$_StoreUser(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userAnonimus: freezed == userAnonimus
          ? _value.userAnonimus
          : userAnonimus // ignore: cast_nullable_to_non_nullable
              as bool?,
      userFirebase: freezed == userFirebase
          ? _value.userFirebase
          : userFirebase // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreUser implements _StoreUser {
  _$_StoreUser(
      {this.username,
      this.userEmail,
      this.userPhone,
      this.gender,
      this.userAnonimus,
      this.userFirebase});

  factory _$_StoreUser.fromJson(Map<String, dynamic> json) =>
      _$$_StoreUserFromJson(json);

  @override
  final String? username;
  @override
  final String? userEmail;
  @override
  final String? userPhone;
  @override
  final String? gender;
  @override
  final bool? userAnonimus;
  @override
  final int? userFirebase;

  @override
  String toString() {
    return 'StoreUser(username: $username, userEmail: $userEmail, userPhone: $userPhone, gender: $gender, userAnonimus: $userAnonimus, userFirebase: $userFirebase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreUser &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.userAnonimus, userAnonimus) ||
                other.userAnonimus == userAnonimus) &&
            (identical(other.userFirebase, userFirebase) ||
                other.userFirebase == userFirebase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, userEmail, userPhone,
      gender, userAnonimus, userFirebase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreUserCopyWith<_$_StoreUser> get copyWith =>
      __$$_StoreUserCopyWithImpl<_$_StoreUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreUserToJson(
      this,
    );
  }
}

abstract class _StoreUser implements StoreUser {
  factory _StoreUser(
      {final String? username,
      final String? userEmail,
      final String? userPhone,
      final String? gender,
      final bool? userAnonimus,
      final int? userFirebase}) = _$_StoreUser;

  factory _StoreUser.fromJson(Map<String, dynamic> json) =
      _$_StoreUser.fromJson;

  @override
  String? get username;
  @override
  String? get userEmail;
  @override
  String? get userPhone;
  @override
  String? get gender;
  @override
  bool? get userAnonimus;
  @override
  int? get userFirebase;
  @override
  @JsonKey(ignore: true)
  _$$_StoreUserCopyWith<_$_StoreUser> get copyWith =>
      throw _privateConstructorUsedError;
}
