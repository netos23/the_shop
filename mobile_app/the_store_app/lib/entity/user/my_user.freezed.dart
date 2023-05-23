// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyUserDto _$MyUserDtoFromJson(Map<String, dynamic> json) {
  return _MyUserDto.fromJson(json);
}

/// @nodoc
mixin _$MyUserDto {
  int get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userPhone => throw _privateConstructorUsedError;
  bool get userAnonimus => throw _privateConstructorUsedError;
  int get userFirebase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyUserDtoCopyWith<MyUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserDtoCopyWith<$Res> {
  factory $MyUserDtoCopyWith(MyUserDto value, $Res Function(MyUserDto) then) =
      _$MyUserDtoCopyWithImpl<$Res, MyUserDto>;
  @useResult
  $Res call(
      {int id,
      String userName,
      String userPhone,
      bool userAnonimus,
      int userFirebase});
}

/// @nodoc
class _$MyUserDtoCopyWithImpl<$Res, $Val extends MyUserDto>
    implements $MyUserDtoCopyWith<$Res> {
  _$MyUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? userPhone = null,
    Object? userAnonimus = null,
    Object? userFirebase = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userAnonimus: null == userAnonimus
          ? _value.userAnonimus
          : userAnonimus // ignore: cast_nullable_to_non_nullable
              as bool,
      userFirebase: null == userFirebase
          ? _value.userFirebase
          : userFirebase // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyUserDtoCopyWith<$Res> implements $MyUserDtoCopyWith<$Res> {
  factory _$$_MyUserDtoCopyWith(
          _$_MyUserDto value, $Res Function(_$_MyUserDto) then) =
      __$$_MyUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userName,
      String userPhone,
      bool userAnonimus,
      int userFirebase});
}

/// @nodoc
class __$$_MyUserDtoCopyWithImpl<$Res>
    extends _$MyUserDtoCopyWithImpl<$Res, _$_MyUserDto>
    implements _$$_MyUserDtoCopyWith<$Res> {
  __$$_MyUserDtoCopyWithImpl(
      _$_MyUserDto _value, $Res Function(_$_MyUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? userPhone = null,
    Object? userAnonimus = null,
    Object? userFirebase = null,
  }) {
    return _then(_$_MyUserDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userAnonimus: null == userAnonimus
          ? _value.userAnonimus
          : userAnonimus // ignore: cast_nullable_to_non_nullable
              as bool,
      userFirebase: null == userFirebase
          ? _value.userFirebase
          : userFirebase // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyUserDto implements _MyUserDto {
  _$_MyUserDto(
      {required this.id,
      required this.userName,
      required this.userPhone,
      required this.userAnonimus,
      required this.userFirebase});

  factory _$_MyUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_MyUserDtoFromJson(json);

  @override
  final int id;
  @override
  final String userName;
  @override
  final String userPhone;
  @override
  final bool userAnonimus;
  @override
  final int userFirebase;

  @override
  String toString() {
    return 'MyUserDto(id: $id, userName: $userName, userPhone: $userPhone, userAnonimus: $userAnonimus, userFirebase: $userFirebase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userAnonimus, userAnonimus) ||
                other.userAnonimus == userAnonimus) &&
            (identical(other.userFirebase, userFirebase) ||
                other.userFirebase == userFirebase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, userPhone, userAnonimus, userFirebase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyUserDtoCopyWith<_$_MyUserDto> get copyWith =>
      __$$_MyUserDtoCopyWithImpl<_$_MyUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyUserDtoToJson(
      this,
    );
  }
}

abstract class _MyUserDto implements MyUserDto {
  factory _MyUserDto(
      {required final int id,
      required final String userName,
      required final String userPhone,
      required final bool userAnonimus,
      required final int userFirebase}) = _$_MyUserDto;

  factory _MyUserDto.fromJson(Map<String, dynamic> json) =
      _$_MyUserDto.fromJson;

  @override
  int get id;
  @override
  String get userName;
  @override
  String get userPhone;
  @override
  bool get userAnonimus;
  @override
  int get userFirebase;
  @override
  @JsonKey(ignore: true)
  _$$_MyUserDtoCopyWith<_$_MyUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
