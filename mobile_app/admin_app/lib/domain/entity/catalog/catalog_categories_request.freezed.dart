// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_categories_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogCategoriesRequest _$CatalogCategoriesRequestFromJson(
    Map<String, dynamic> json) {
  return _CatalogCategoriesRequest.fromJson(json);
}

/// @nodoc
mixin _$CatalogCategoriesRequest {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogCategoriesRequestCopyWith<CatalogCategoriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCategoriesRequestCopyWith<$Res> {
  factory $CatalogCategoriesRequestCopyWith(CatalogCategoriesRequest value,
          $Res Function(CatalogCategoriesRequest) then) =
      _$CatalogCategoriesRequestCopyWithImpl<$Res, CatalogCategoriesRequest>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$CatalogCategoriesRequestCopyWithImpl<$Res,
        $Val extends CatalogCategoriesRequest>
    implements $CatalogCategoriesRequestCopyWith<$Res> {
  _$CatalogCategoriesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogCategoriesRequestCopyWith<$Res>
    implements $CatalogCategoriesRequestCopyWith<$Res> {
  factory _$$_CatalogCategoriesRequestCopyWith(
          _$_CatalogCategoriesRequest value,
          $Res Function(_$_CatalogCategoriesRequest) then) =
      __$$_CatalogCategoriesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_CatalogCategoriesRequestCopyWithImpl<$Res>
    extends _$CatalogCategoriesRequestCopyWithImpl<$Res,
        _$_CatalogCategoriesRequest>
    implements _$$_CatalogCategoriesRequestCopyWith<$Res> {
  __$$_CatalogCategoriesRequestCopyWithImpl(_$_CatalogCategoriesRequest _value,
      $Res Function(_$_CatalogCategoriesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_CatalogCategoriesRequest(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_CatalogCategoriesRequest implements _CatalogCategoriesRequest {
  _$_CatalogCategoriesRequest({this.id});

  factory _$_CatalogCategoriesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogCategoriesRequestFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'CatalogCategoriesRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogCategoriesRequest &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogCategoriesRequestCopyWith<_$_CatalogCategoriesRequest>
      get copyWith => __$$_CatalogCategoriesRequestCopyWithImpl<
          _$_CatalogCategoriesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogCategoriesRequestToJson(
      this,
    );
  }
}

abstract class _CatalogCategoriesRequest implements CatalogCategoriesRequest {
  factory _CatalogCategoriesRequest({final int? id}) =
      _$_CatalogCategoriesRequest;

  factory _CatalogCategoriesRequest.fromJson(Map<String, dynamic> json) =
      _$_CatalogCategoriesRequest.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogCategoriesRequestCopyWith<_$_CatalogCategoriesRequest>
      get copyWith => throw _privateConstructorUsedError;
}
