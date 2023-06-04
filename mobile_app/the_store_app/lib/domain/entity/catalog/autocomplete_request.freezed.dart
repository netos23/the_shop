// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autocomplete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutocompleteRequest _$AutocompleteRequestFromJson(Map<String, dynamic> json) {
  return _AutocompleteRequest.fromJson(json);
}

/// @nodoc
mixin _$AutocompleteRequest {
  String get searchRequest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutocompleteRequestCopyWith<AutocompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompleteRequestCopyWith<$Res> {
  factory $AutocompleteRequestCopyWith(
          AutocompleteRequest value, $Res Function(AutocompleteRequest) then) =
      _$AutocompleteRequestCopyWithImpl<$Res, AutocompleteRequest>;
  @useResult
  $Res call({String searchRequest});
}

/// @nodoc
class _$AutocompleteRequestCopyWithImpl<$Res, $Val extends AutocompleteRequest>
    implements $AutocompleteRequestCopyWith<$Res> {
  _$AutocompleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchRequest = null,
  }) {
    return _then(_value.copyWith(
      searchRequest: null == searchRequest
          ? _value.searchRequest
          : searchRequest // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AutocompleteRequestCopyWith<$Res>
    implements $AutocompleteRequestCopyWith<$Res> {
  factory _$$_AutocompleteRequestCopyWith(_$_AutocompleteRequest value,
          $Res Function(_$_AutocompleteRequest) then) =
      __$$_AutocompleteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchRequest});
}

/// @nodoc
class __$$_AutocompleteRequestCopyWithImpl<$Res>
    extends _$AutocompleteRequestCopyWithImpl<$Res, _$_AutocompleteRequest>
    implements _$$_AutocompleteRequestCopyWith<$Res> {
  __$$_AutocompleteRequestCopyWithImpl(_$_AutocompleteRequest _value,
      $Res Function(_$_AutocompleteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchRequest = null,
  }) {
    return _then(_$_AutocompleteRequest(
      searchRequest: null == searchRequest
          ? _value.searchRequest
          : searchRequest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_AutocompleteRequest implements _AutocompleteRequest {
  _$_AutocompleteRequest({required this.searchRequest});

  factory _$_AutocompleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AutocompleteRequestFromJson(json);

  @override
  final String searchRequest;

  @override
  String toString() {
    return 'AutocompleteRequest(searchRequest: $searchRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutocompleteRequest &&
            (identical(other.searchRequest, searchRequest) ||
                other.searchRequest == searchRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, searchRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AutocompleteRequestCopyWith<_$_AutocompleteRequest> get copyWith =>
      __$$_AutocompleteRequestCopyWithImpl<_$_AutocompleteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutocompleteRequestToJson(
      this,
    );
  }
}

abstract class _AutocompleteRequest implements AutocompleteRequest {
  factory _AutocompleteRequest({required final String searchRequest}) =
      _$_AutocompleteRequest;

  factory _AutocompleteRequest.fromJson(Map<String, dynamic> json) =
      _$_AutocompleteRequest.fromJson;

  @override
  String get searchRequest;
  @override
  @JsonKey(ignore: true)
  _$$_AutocompleteRequestCopyWith<_$_AutocompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
