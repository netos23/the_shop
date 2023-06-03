// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_product_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogProductList _$CatalogProductListFromJson(Map<String, dynamic> json) {
  return _CatalogProductList.fromJson(json);
}

/// @nodoc
mixin _$CatalogProductList {
  int get count => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<ShortProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogProductListCopyWith<CatalogProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogProductListCopyWith<$Res> {
  factory $CatalogProductListCopyWith(
          CatalogProductList value, $Res Function(CatalogProductList) then) =
      _$CatalogProductListCopyWithImpl<$Res, CatalogProductList>;
  @useResult
  $Res call({int count, int page, int size, List<ShortProduct> products});
}

/// @nodoc
class _$CatalogProductListCopyWithImpl<$Res, $Val extends CatalogProductList>
    implements $CatalogProductListCopyWith<$Res> {
  _$CatalogProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? page = null,
    Object? size = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShortProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogProductListCopyWith<$Res>
    implements $CatalogProductListCopyWith<$Res> {
  factory _$$_CatalogProductListCopyWith(_$_CatalogProductList value,
          $Res Function(_$_CatalogProductList) then) =
      __$$_CatalogProductListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int page, int size, List<ShortProduct> products});
}

/// @nodoc
class __$$_CatalogProductListCopyWithImpl<$Res>
    extends _$CatalogProductListCopyWithImpl<$Res, _$_CatalogProductList>
    implements _$$_CatalogProductListCopyWith<$Res> {
  __$$_CatalogProductListCopyWithImpl(
      _$_CatalogProductList _value, $Res Function(_$_CatalogProductList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? page = null,
    Object? size = null,
    Object? products = null,
  }) {
    return _then(_$_CatalogProductList(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShortProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogProductList implements _CatalogProductList {
  _$_CatalogProductList(
      {required this.count,
      required this.page,
      required this.size,
      required final List<ShortProduct> products})
      : _products = products;

  factory _$_CatalogProductList.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogProductListFromJson(json);

  @override
  final int count;
  @override
  final int page;
  @override
  final int size;
  final List<ShortProduct> _products;
  @override
  List<ShortProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CatalogProductList(count: $count, page: $page, size: $size, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogProductList &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, page, size,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogProductListCopyWith<_$_CatalogProductList> get copyWith =>
      __$$_CatalogProductListCopyWithImpl<_$_CatalogProductList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogProductListToJson(
      this,
    );
  }
}

abstract class _CatalogProductList implements CatalogProductList {
  factory _CatalogProductList(
      {required final int count,
      required final int page,
      required final int size,
      required final List<ShortProduct> products}) = _$_CatalogProductList;

  factory _CatalogProductList.fromJson(Map<String, dynamic> json) =
      _$_CatalogProductList.fromJson;

  @override
  int get count;
  @override
  int get page;
  @override
  int get size;
  @override
  List<ShortProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogProductListCopyWith<_$_CatalogProductList> get copyWith =>
      throw _privateConstructorUsedError;
}
