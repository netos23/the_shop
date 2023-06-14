// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return _ProductDetail.fromJson(json);
}

/// @nodoc
mixin _$ProductDetail {
  int get id => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  List<Badge> get badges => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias')
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call(
      {int id,
      Decimal price,
      List<Badge> badges,
      String name,
      String? brand,
      String? picture,
      String? article,
      String? description,
      bool? available,
      double? rating,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'city_fias') String? cityFias});
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? badges = null,
    Object? name = null,
    Object? brand = freezed,
    Object? picture = freezed,
    Object? article = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? rating = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$_ProductDetailCopyWith(
          _$_ProductDetail value, $Res Function(_$_ProductDetail) then) =
      __$$_ProductDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Decimal price,
      List<Badge> badges,
      String name,
      String? brand,
      String? picture,
      String? article,
      String? description,
      bool? available,
      double? rating,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'city_fias') String? cityFias});
}

/// @nodoc
class __$$_ProductDetailCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$_ProductDetail>
    implements _$$_ProductDetailCopyWith<$Res> {
  __$$_ProductDetailCopyWithImpl(
      _$_ProductDetail _value, $Res Function(_$_ProductDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? badges = null,
    Object? name = null,
    Object? brand = freezed,
    Object? picture = freezed,
    Object? article = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? rating = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$_ProductDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ProductDetail implements _ProductDetail {
  const _$_ProductDetail(
      {required this.id,
      required this.price,
      required final List<Badge> badges,
      required this.name,
      this.brand,
      this.picture,
      this.article,
      this.description,
      this.available,
      this.rating,
      @JsonKey(name: 'old_price') this.oldPrice,
      @JsonKey(name: 'reviews_count') this.reviewsCount,
      @JsonKey(name: 'city_fias') this.cityFias})
      : _badges = badges;

  factory _$_ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailFromJson(json);

  @override
  final int id;
  @override
  final Decimal price;
  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final String name;
  @override
  final String? brand;
  @override
  final String? picture;
  @override
  final String? article;
  @override
  final String? description;
  @override
  final bool? available;
  @override
  final double? rating;
  @override
  @JsonKey(name: 'old_price')
  final Decimal? oldPrice;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  @override
  @JsonKey(name: 'city_fias')
  final String? cityFias;

  @override
  String toString() {
    return 'ProductDetail(id: $id, price: $price, badges: $badges, name: $name, brand: $brand, picture: $picture, article: $article, description: $description, available: $available, rating: $rating, oldPrice: $oldPrice, reviewsCount: $reviewsCount, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      const DeepCollectionEquality().hash(_badges),
      name,
      brand,
      picture,
      article,
      description,
      available,
      rating,
      oldPrice,
      reviewsCount,
      cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailCopyWith<_$_ProductDetail> get copyWith =>
      __$$_ProductDetailCopyWithImpl<_$_ProductDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailToJson(
      this,
    );
  }
}

abstract class _ProductDetail implements ProductDetail {
  const factory _ProductDetail(
      {required final int id,
      required final Decimal price,
      required final List<Badge> badges,
      required final String name,
      final String? brand,
      final String? picture,
      final String? article,
      final String? description,
      final bool? available,
      final double? rating,
      @JsonKey(name: 'old_price') final Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') final int? reviewsCount,
      @JsonKey(name: 'city_fias') final String? cityFias}) = _$_ProductDetail;

  factory _ProductDetail.fromJson(Map<String, dynamic> json) =
      _$_ProductDetail.fromJson;

  @override
  int get id;
  @override
  Decimal get price;
  @override
  List<Badge> get badges;
  @override
  String get name;
  @override
  String? get brand;
  @override
  String? get picture;
  @override
  String? get article;
  @override
  String? get description;
  @override
  bool? get available;
  @override
  double? get rating;
  @override
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  @JsonKey(name: 'city_fias')
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailCopyWith<_$_ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
