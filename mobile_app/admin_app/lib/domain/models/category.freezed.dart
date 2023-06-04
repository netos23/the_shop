// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  List<Category>? get subcategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {int id, String name, String? picture, List<Category>? subcategories});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? picture = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategories: freezed == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String? picture, List<Category>? subcategories});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? picture = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_$_Category(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategories: freezed == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  _$_Category(
      {required this.id,
      required this.name,
      this.picture,
      required final List<Category>? subcategories})
      : _subcategories = subcategories;

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? picture;
  final List<Category>? _subcategories;
  @override
  List<Category>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Category(id: $id, name: $name, picture: $picture, subcategories: $subcategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, picture,
      const DeepCollectionEquality().hash(_subcategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  factory _Category(
      {required final int id,
      required final String name,
      final String? picture,
      required final List<Category>? subcategories}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get picture;
  @override
  List<Category>? get subcategories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
