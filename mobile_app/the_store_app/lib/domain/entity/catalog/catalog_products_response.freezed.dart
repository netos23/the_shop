// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogProductsResponse _$CatalogProductsResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogProductsResponse {
  List<Product> get results => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogProductsResponseCopyWith<CatalogProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogProductsResponseCopyWith<$Res> {
  factory $CatalogProductsResponseCopyWith(CatalogProductsResponse value,
          $Res Function(CatalogProductsResponse) then) =
      _$CatalogProductsResponseCopyWithImpl<$Res, CatalogProductsResponse>;
  @useResult
  $Res call({List<Product> results, int count, String? next});
}

/// @nodoc
class _$CatalogProductsResponseCopyWithImpl<$Res,
        $Val extends CatalogProductsResponse>
    implements $CatalogProductsResponseCopyWith<$Res> {
  _$CatalogProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? count = null,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogProductsResponseCopyWith<$Res>
    implements $CatalogProductsResponseCopyWith<$Res> {
  factory _$$_CatalogProductsResponseCopyWith(_$_CatalogProductsResponse value,
          $Res Function(_$_CatalogProductsResponse) then) =
      __$$_CatalogProductsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> results, int count, String? next});
}

/// @nodoc
class __$$_CatalogProductsResponseCopyWithImpl<$Res>
    extends _$CatalogProductsResponseCopyWithImpl<$Res,
        _$_CatalogProductsResponse>
    implements _$$_CatalogProductsResponseCopyWith<$Res> {
  __$$_CatalogProductsResponseCopyWithImpl(_$_CatalogProductsResponse _value,
      $Res Function(_$_CatalogProductsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? count = null,
    Object? next = freezed,
  }) {
    return _then(_$_CatalogProductsResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogProductsResponse implements _CatalogProductsResponse {
  _$_CatalogProductsResponse(
      {required final List<Product> results,
      required this.count,
      required this.next})
      : _results = results;

  factory _$_CatalogProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogProductsResponseFromJson(json);

  final List<Product> _results;
  @override
  List<Product> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int count;
  @override
  final String? next;

  @override
  String toString() {
    return 'CatalogProductsResponse(results: $results, count: $count, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogProductsResponse &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), count, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogProductsResponseCopyWith<_$_CatalogProductsResponse>
      get copyWith =>
          __$$_CatalogProductsResponseCopyWithImpl<_$_CatalogProductsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogProductsResponseToJson(
      this,
    );
  }
}

abstract class _CatalogProductsResponse implements CatalogProductsResponse {
  factory _CatalogProductsResponse(
      {required final List<Product> results,
      required final int count,
      required final String? next}) = _$_CatalogProductsResponse;

  factory _CatalogProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_CatalogProductsResponse.fromJson;

  @override
  List<Product> get results;
  @override
  int get count;
  @override
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogProductsResponseCopyWith<_$_CatalogProductsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
