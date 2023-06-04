// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_types_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SortTypesRequest _$SortTypesRequestFromJson(Map<String, dynamic> json) {
  return _SortTypesRequest.fromJson(json);
}

/// @nodoc
mixin _$SortTypesRequest {
  List<SortType> get sorts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortTypesRequestCopyWith<SortTypesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortTypesRequestCopyWith<$Res> {
  factory $SortTypesRequestCopyWith(
          SortTypesRequest value, $Res Function(SortTypesRequest) then) =
      _$SortTypesRequestCopyWithImpl<$Res, SortTypesRequest>;
  @useResult
  $Res call({List<SortType> sorts});
}

/// @nodoc
class _$SortTypesRequestCopyWithImpl<$Res, $Val extends SortTypesRequest>
    implements $SortTypesRequestCopyWith<$Res> {
  _$SortTypesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorts = null,
  }) {
    return _then(_value.copyWith(
      sorts: null == sorts
          ? _value.sorts
          : sorts // ignore: cast_nullable_to_non_nullable
              as List<SortType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SortTypesRequestCopyWith<$Res>
    implements $SortTypesRequestCopyWith<$Res> {
  factory _$$_SortTypesRequestCopyWith(
          _$_SortTypesRequest value, $Res Function(_$_SortTypesRequest) then) =
      __$$_SortTypesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SortType> sorts});
}

/// @nodoc
class __$$_SortTypesRequestCopyWithImpl<$Res>
    extends _$SortTypesRequestCopyWithImpl<$Res, _$_SortTypesRequest>
    implements _$$_SortTypesRequestCopyWith<$Res> {
  __$$_SortTypesRequestCopyWithImpl(
      _$_SortTypesRequest _value, $Res Function(_$_SortTypesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorts = null,
  }) {
    return _then(_$_SortTypesRequest(
      sorts: null == sorts
          ? _value._sorts
          : sorts // ignore: cast_nullable_to_non_nullable
              as List<SortType>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_SortTypesRequest implements _SortTypesRequest {
  _$_SortTypesRequest({required final List<SortType> sorts}) : _sorts = sorts;

  factory _$_SortTypesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SortTypesRequestFromJson(json);

  final List<SortType> _sorts;
  @override
  List<SortType> get sorts {
    if (_sorts is EqualUnmodifiableListView) return _sorts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sorts);
  }

  @override
  String toString() {
    return 'SortTypesRequest(sorts: $sorts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortTypesRequest &&
            const DeepCollectionEquality().equals(other._sorts, _sorts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sorts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortTypesRequestCopyWith<_$_SortTypesRequest> get copyWith =>
      __$$_SortTypesRequestCopyWithImpl<_$_SortTypesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortTypesRequestToJson(
      this,
    );
  }
}

abstract class _SortTypesRequest implements SortTypesRequest {
  factory _SortTypesRequest({required final List<SortType> sorts}) =
      _$_SortTypesRequest;

  factory _SortTypesRequest.fromJson(Map<String, dynamic> json) =
      _$_SortTypesRequest.fromJson;

  @override
  List<SortType> get sorts;
  @override
  @JsonKey(ignore: true)
  _$$_SortTypesRequestCopyWith<_$_SortTypesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
