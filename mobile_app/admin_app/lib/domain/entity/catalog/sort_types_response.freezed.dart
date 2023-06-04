// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_types_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SortTypesResponse _$SortTypesResponseFromJson(Map<String, dynamic> json) {
  return _SortTypesResponse.fromJson(json);
}

/// @nodoc
mixin _$SortTypesResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortTypesResponseCopyWith<SortTypesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortTypesResponseCopyWith<$Res> {
  factory $SortTypesResponseCopyWith(
          SortTypesResponse value, $Res Function(SortTypesResponse) then) =
      _$SortTypesResponseCopyWithImpl<$Res, SortTypesResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SortTypesResponseCopyWithImpl<$Res, $Val extends SortTypesResponse>
    implements $SortTypesResponseCopyWith<$Res> {
  _$SortTypesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SortTypesResponseCopyWith<$Res>
    implements $SortTypesResponseCopyWith<$Res> {
  factory _$$_SortTypesResponseCopyWith(_$_SortTypesResponse value,
          $Res Function(_$_SortTypesResponse) then) =
      __$$_SortTypesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_SortTypesResponseCopyWithImpl<$Res>
    extends _$SortTypesResponseCopyWithImpl<$Res, _$_SortTypesResponse>
    implements _$$_SortTypesResponseCopyWith<$Res> {
  __$$_SortTypesResponseCopyWithImpl(
      _$_SortTypesResponse _value, $Res Function(_$_SortTypesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_SortTypesResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_SortTypesResponse implements _SortTypesResponse {
  _$_SortTypesResponse({required this.name});

  factory _$_SortTypesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SortTypesResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'SortTypesResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortTypesResponse &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortTypesResponseCopyWith<_$_SortTypesResponse> get copyWith =>
      __$$_SortTypesResponseCopyWithImpl<_$_SortTypesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortTypesResponseToJson(
      this,
    );
  }
}

abstract class _SortTypesResponse implements SortTypesResponse {
  factory _SortTypesResponse({required final String name}) =
      _$_SortTypesResponse;

  factory _SortTypesResponse.fromJson(Map<String, dynamic> json) =
      _$_SortTypesResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SortTypesResponseCopyWith<_$_SortTypesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
