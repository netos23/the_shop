// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_with_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductWithCount _$ProductWithCountFromJson(Map<String, dynamic> json) {
  return _ProductWithCount.fromJson(json);
}

/// @nodoc
mixin _$ProductWithCount {
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductWithCountCopyWith<ProductWithCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWithCountCopyWith<$Res> {
  factory $ProductWithCountCopyWith(
          ProductWithCount value, $Res Function(ProductWithCount) then) =
      _$ProductWithCountCopyWithImpl<$Res, ProductWithCount>;
  @useResult
  $Res call({@JsonKey(name: "product_id") int productId, int count});
}

/// @nodoc
class _$ProductWithCountCopyWithImpl<$Res, $Val extends ProductWithCount>
    implements $ProductWithCountCopyWith<$Res> {
  _$ProductWithCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductWithCountCopyWith<$Res>
    implements $ProductWithCountCopyWith<$Res> {
  factory _$$_ProductWithCountCopyWith(
          _$_ProductWithCount value, $Res Function(_$_ProductWithCount) then) =
      __$$_ProductWithCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "product_id") int productId, int count});
}

/// @nodoc
class __$$_ProductWithCountCopyWithImpl<$Res>
    extends _$ProductWithCountCopyWithImpl<$Res, _$_ProductWithCount>
    implements _$$_ProductWithCountCopyWith<$Res> {
  __$$_ProductWithCountCopyWithImpl(
      _$_ProductWithCount _value, $Res Function(_$_ProductWithCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_$_ProductWithCount(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductWithCount implements _ProductWithCount {
  _$_ProductWithCount(
      {@JsonKey(name: "product_id") required this.productId,
      required this.count});

  factory _$_ProductWithCount.fromJson(Map<String, dynamic> json) =>
      _$$_ProductWithCountFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  final int count;

  @override
  String toString() {
    return 'ProductWithCount(productId: $productId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductWithCount &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductWithCountCopyWith<_$_ProductWithCount> get copyWith =>
      __$$_ProductWithCountCopyWithImpl<_$_ProductWithCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductWithCountToJson(
      this,
    );
  }
}

abstract class _ProductWithCount implements ProductWithCount {
  factory _ProductWithCount(
      {@JsonKey(name: "product_id") required final int productId,
      required final int count}) = _$_ProductWithCount;

  factory _ProductWithCount.fromJson(Map<String, dynamic> json) =
      _$_ProductWithCount.fromJson;

  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_ProductWithCountCopyWith<_$_ProductWithCount> get copyWith =>
      throw _privateConstructorUsedError;
}
