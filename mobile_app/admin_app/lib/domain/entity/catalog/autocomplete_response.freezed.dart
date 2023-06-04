// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autocomplete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutocompleteResponse _$AutocompleteResponseFromJson(Map<String, dynamic> json) {
  return _AutocompleteResponse.fromJson(json);
}

/// @nodoc
mixin _$AutocompleteResponse {
  List<String> get suggestions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutocompleteResponseCopyWith<AutocompleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutocompleteResponseCopyWith<$Res> {
  factory $AutocompleteResponseCopyWith(AutocompleteResponse value,
          $Res Function(AutocompleteResponse) then) =
      _$AutocompleteResponseCopyWithImpl<$Res, AutocompleteResponse>;
  @useResult
  $Res call({List<String> suggestions});
}

/// @nodoc
class _$AutocompleteResponseCopyWithImpl<$Res,
        $Val extends AutocompleteResponse>
    implements $AutocompleteResponseCopyWith<$Res> {
  _$AutocompleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AutocompleteResponseCopyWith<$Res>
    implements $AutocompleteResponseCopyWith<$Res> {
  factory _$$_AutocompleteResponseCopyWith(_$_AutocompleteResponse value,
          $Res Function(_$_AutocompleteResponse) then) =
      __$$_AutocompleteResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> suggestions});
}

/// @nodoc
class __$$_AutocompleteResponseCopyWithImpl<$Res>
    extends _$AutocompleteResponseCopyWithImpl<$Res, _$_AutocompleteResponse>
    implements _$$_AutocompleteResponseCopyWith<$Res> {
  __$$_AutocompleteResponseCopyWithImpl(_$_AutocompleteResponse _value,
      $Res Function(_$_AutocompleteResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$_AutocompleteResponse(
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_AutocompleteResponse implements _AutocompleteResponse {
  _$_AutocompleteResponse({required final List<String> suggestions})
      : _suggestions = suggestions;

  factory _$_AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AutocompleteResponseFromJson(json);

  final List<String> _suggestions;
  @override
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'AutocompleteResponse(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutocompleteResponse &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AutocompleteResponseCopyWith<_$_AutocompleteResponse> get copyWith =>
      __$$_AutocompleteResponseCopyWithImpl<_$_AutocompleteResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutocompleteResponseToJson(
      this,
    );
  }
}

abstract class _AutocompleteResponse implements AutocompleteResponse {
  factory _AutocompleteResponse({required final List<String> suggestions}) =
      _$_AutocompleteResponse;

  factory _AutocompleteResponse.fromJson(Map<String, dynamic> json) =
      _$_AutocompleteResponse.fromJson;

  @override
  List<String> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$_AutocompleteResponseCopyWith<_$_AutocompleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
