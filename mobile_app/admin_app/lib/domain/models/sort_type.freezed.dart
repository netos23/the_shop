// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SortType _$SortTypeFromJson(Map<String, dynamic> json) {
  return _SortType.fromJson(json);
}

/// @nodoc
mixin _$SortType {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortTypeCopyWith<SortType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortTypeCopyWith<$Res> {
  factory $SortTypeCopyWith(SortType value, $Res Function(SortType) then) =
      _$SortTypeCopyWithImpl<$Res, SortType>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SortTypeCopyWithImpl<$Res, $Val extends SortType>
    implements $SortTypeCopyWith<$Res> {
  _$SortTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SortTypeCopyWith<$Res> implements $SortTypeCopyWith<$Res> {
  factory _$$_SortTypeCopyWith(
          _$_SortType value, $Res Function(_$_SortType) then) =
      __$$_SortTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_SortTypeCopyWithImpl<$Res>
    extends _$SortTypeCopyWithImpl<$Res, _$_SortType>
    implements _$$_SortTypeCopyWith<$Res> {
  __$$_SortTypeCopyWithImpl(
      _$_SortType _value, $Res Function(_$_SortType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SortType(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_SortType implements _SortType {
  _$_SortType({this.id, this.name});

  factory _$_SortType.fromJson(Map<String, dynamic> json) =>
      _$$_SortTypeFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SortType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortTypeCopyWith<_$_SortType> get copyWith =>
      __$$_SortTypeCopyWithImpl<_$_SortType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortTypeToJson(
      this,
    );
  }
}

abstract class _SortType implements SortType {
  factory _SortType({final String? id, final String? name}) = _$_SortType;

  factory _SortType.fromJson(Map<String, dynamic> json) = _$_SortType.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SortTypeCopyWith<_$_SortType> get copyWith =>
      throw _privateConstructorUsedError;
}
