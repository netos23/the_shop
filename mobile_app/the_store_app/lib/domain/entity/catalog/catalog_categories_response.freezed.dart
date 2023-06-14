// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogCategoriesResponse _$CatalogCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogCategoriesResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogCategoriesResponseCopyWith<CatalogCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCategoriesResponseCopyWith<$Res> {
  factory $CatalogCategoriesResponseCopyWith(CatalogCategoriesResponse value,
          $Res Function(CatalogCategoriesResponse) then) =
      _$CatalogCategoriesResponseCopyWithImpl<$Res, CatalogCategoriesResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CatalogCategoriesResponseCopyWithImpl<$Res,
        $Val extends CatalogCategoriesResponse>
    implements $CatalogCategoriesResponseCopyWith<$Res> {
  _$CatalogCategoriesResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CatalogCategoriesResponseCopyWith<$Res>
    implements $CatalogCategoriesResponseCopyWith<$Res> {
  factory _$$_CatalogCategoriesResponseCopyWith(
          _$_CatalogCategoriesResponse value,
          $Res Function(_$_CatalogCategoriesResponse) then) =
      __$$_CatalogCategoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CatalogCategoriesResponseCopyWithImpl<$Res>
    extends _$CatalogCategoriesResponseCopyWithImpl<$Res,
        _$_CatalogCategoriesResponse>
    implements _$$_CatalogCategoriesResponseCopyWith<$Res> {
  __$$_CatalogCategoriesResponseCopyWithImpl(
      _$_CatalogCategoriesResponse _value,
      $Res Function(_$_CatalogCategoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CatalogCategoriesResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_CatalogCategoriesResponse implements _CatalogCategoriesResponse {
  const _$_CatalogCategoriesResponse({required this.name});

  factory _$_CatalogCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogCategoriesResponseFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CatalogCategoriesResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogCategoriesResponse &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogCategoriesResponseCopyWith<_$_CatalogCategoriesResponse>
      get copyWith => __$$_CatalogCategoriesResponseCopyWithImpl<
          _$_CatalogCategoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogCategoriesResponseToJson(
      this,
    );
  }
}

abstract class _CatalogCategoriesResponse implements CatalogCategoriesResponse {
  const factory _CatalogCategoriesResponse({required final String name}) =
      _$_CatalogCategoriesResponse;

  factory _CatalogCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_CatalogCategoriesResponse.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogCategoriesResponseCopyWith<_$_CatalogCategoriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
