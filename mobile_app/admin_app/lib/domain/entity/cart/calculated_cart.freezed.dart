// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculated_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalculatedCart _$CalculatedCartFromJson(Map<String, dynamic> json) {
  return _CalculatedCart.fromJson(json);
}

/// @nodoc
mixin _$CalculatedCart {
  @JsonKey(name: 'promocode', includeIfNull: false)
  String? get promocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatedCartCopyWith<CalculatedCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatedCartCopyWith<$Res> {
  factory $CalculatedCartCopyWith(
          CalculatedCart value, $Res Function(CalculatedCart) then) =
      _$CalculatedCartCopyWithImpl<$Res, CalculatedCart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class _$CalculatedCartCopyWithImpl<$Res, $Val extends CalculatedCart>
    implements $CalculatedCartCopyWith<$Res> {
  _$CalculatedCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculatedCartCopyWith<$Res>
    implements $CalculatedCartCopyWith<$Res> {
  factory _$$_CalculatedCartCopyWith(
          _$_CalculatedCart value, $Res Function(_$_CalculatedCart) then) =
      __$$_CalculatedCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class __$$_CalculatedCartCopyWithImpl<$Res>
    extends _$CalculatedCartCopyWithImpl<$Res, _$_CalculatedCart>
    implements _$$_CalculatedCartCopyWith<$Res> {
  __$$_CalculatedCartCopyWithImpl(
      _$_CalculatedCart _value, $Res Function(_$_CalculatedCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$_CalculatedCart(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculatedCart implements _CalculatedCart {
  _$_CalculatedCart(
      {@JsonKey(name: 'promocode', includeIfNull: false) this.promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) this.cityFias});

  factory _$_CalculatedCart.fromJson(Map<String, dynamic> json) =>
      _$$_CalculatedCartFromJson(json);

  @override
  @JsonKey(name: 'promocode', includeIfNull: false)
  final String? promocode;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  final String? cityFias;

  @override
  String toString() {
    return 'CalculatedCart(promocode: $promocode, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatedCart &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, promocode, cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatedCartCopyWith<_$_CalculatedCart> get copyWith =>
      __$$_CalculatedCartCopyWithImpl<_$_CalculatedCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculatedCartToJson(
      this,
    );
  }
}

abstract class _CalculatedCart implements CalculatedCart {
  factory _CalculatedCart(
      {@JsonKey(name: 'promocode', includeIfNull: false)
          final String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false)
          final String? cityFias}) = _$_CalculatedCart;

  factory _CalculatedCart.fromJson(Map<String, dynamic> json) =
      _$_CalculatedCart.fromJson;

  @override
  @JsonKey(name: 'promocode', includeIfNull: false)
  String? get promocode;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatedCartCopyWith<_$_CalculatedCart> get copyWith =>
      throw _privateConstructorUsedError;
}
