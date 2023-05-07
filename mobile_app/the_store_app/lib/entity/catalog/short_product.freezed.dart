// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShortProduct {
  int get id => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  Decimal get productPrice => throw _privateConstructorUsedError;
  Decimal? get productOldPrice => throw _privateConstructorUsedError;
  List<String> get pictures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortProductCopyWith<ShortProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortProductCopyWith<$Res> {
  factory $ShortProductCopyWith(
          ShortProduct value, $Res Function(ShortProduct) then) =
      _$ShortProductCopyWithImpl<$Res, ShortProduct>;
  @useResult
  $Res call(
      {int id,
      String productName,
      Decimal productPrice,
      Decimal? productOldPrice,
      List<String> pictures});
}

/// @nodoc
class _$ShortProductCopyWithImpl<$Res, $Val extends ShortProduct>
    implements $ShortProductCopyWith<$Res> {
  _$ShortProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productOldPrice = freezed,
    Object? pictures = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      productOldPrice: freezed == productOldPrice
          ? _value.productOldPrice
          : productOldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortProductCopyWith<$Res>
    implements $ShortProductCopyWith<$Res> {
  factory _$$_ShortProductCopyWith(
          _$_ShortProduct value, $Res Function(_$_ShortProduct) then) =
      __$$_ShortProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String productName,
      Decimal productPrice,
      Decimal? productOldPrice,
      List<String> pictures});
}

/// @nodoc
class __$$_ShortProductCopyWithImpl<$Res>
    extends _$ShortProductCopyWithImpl<$Res, _$_ShortProduct>
    implements _$$_ShortProductCopyWith<$Res> {
  __$$_ShortProductCopyWithImpl(
      _$_ShortProduct _value, $Res Function(_$_ShortProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productOldPrice = freezed,
    Object? pictures = null,
  }) {
    return _then(_$_ShortProduct(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      productOldPrice: freezed == productOldPrice
          ? _value.productOldPrice
          : productOldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ShortProduct implements _ShortProduct {
  _$_ShortProduct(
      {required this.id,
      required this.productName,
      required this.productPrice,
      this.productOldPrice,
      required final List<String> pictures})
      : _pictures = pictures;

  @override
  final int id;
  @override
  final String productName;
  @override
  final Decimal productPrice;
  @override
  final Decimal? productOldPrice;
  final List<String> _pictures;
  @override
  List<String> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  String toString() {
    return 'ShortProduct(id: $id, productName: $productName, productPrice: $productPrice, productOldPrice: $productOldPrice, pictures: $pictures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productOldPrice, productOldPrice) ||
                other.productOldPrice == productOldPrice) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, productName, productPrice,
      productOldPrice, const DeepCollectionEquality().hash(_pictures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortProductCopyWith<_$_ShortProduct> get copyWith =>
      __$$_ShortProductCopyWithImpl<_$_ShortProduct>(this, _$identity);
}

abstract class _ShortProduct implements ShortProduct {
  factory _ShortProduct(
      {required final int id,
      required final String productName,
      required final Decimal productPrice,
      final Decimal? productOldPrice,
      required final List<String> pictures}) = _$_ShortProduct;

  @override
  int get id;
  @override
  String get productName;
  @override
  Decimal get productPrice;
  @override
  Decimal? get productOldPrice;
  @override
  List<String> get pictures;
  @override
  @JsonKey(ignore: true)
  _$$_ShortProductCopyWith<_$_ShortProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
