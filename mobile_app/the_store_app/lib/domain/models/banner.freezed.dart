// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowCaseBanner _$ShowCaseBannerFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'imageBanner':
      return ImageBanner.fromJson(json);
    case 'buttonBanner':
      return ButtonBanner.fromJson(json);
    case 'titleBanner':
      return TitleBanner.fromJson(json);
    case 'markdownBanner':
      return MarkdownBanner.fromJson(json);
    case 'sliderBanner':
      return SliderBanner.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'ShowCaseBanner',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ShowCaseBanner {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCaseBannerCopyWith<$Res> {
  factory $ShowCaseBannerCopyWith(
          ShowCaseBanner value, $Res Function(ShowCaseBanner) then) =
      _$ShowCaseBannerCopyWithImpl<$Res, ShowCaseBanner>;
}

/// @nodoc
class _$ShowCaseBannerCopyWithImpl<$Res, $Val extends ShowCaseBanner>
    implements $ShowCaseBannerCopyWith<$Res> {
  _$ShowCaseBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageBannerCopyWith<$Res> {
  factory _$$ImageBannerCopyWith(
          _$ImageBanner value, $Res Function(_$ImageBanner) then) =
      __$$ImageBannerCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'image_url') String imageUrl, String? link});
}

/// @nodoc
class __$$ImageBannerCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$ImageBanner>
    implements _$$ImageBannerCopyWith<$Res> {
  __$$ImageBannerCopyWithImpl(
      _$ImageBanner _value, $Res Function(_$ImageBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? link = freezed,
  }) {
    return _then(_$ImageBanner(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ImageBanner implements ImageBanner {
  const _$ImageBanner(
      {@JsonKey(name: 'image_url') required this.imageUrl,
      this.link,
      final String? $type})
      : $type = $type ?? 'imageBanner';

  factory _$ImageBanner.fromJson(Map<String, dynamic> json) =>
      _$$ImageBannerFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String? link;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.imageBanner(imageUrl: $imageUrl, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageBanner &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageBannerCopyWith<_$ImageBanner> get copyWith =>
      __$$ImageBannerCopyWithImpl<_$ImageBanner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return imageBanner(imageUrl, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return imageBanner?.call(imageUrl, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (imageBanner != null) {
      return imageBanner(imageUrl, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return imageBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return imageBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (imageBanner != null) {
      return imageBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageBannerToJson(
      this,
    );
  }
}

abstract class ImageBanner implements ShowCaseBanner {
  const factory ImageBanner(
      {@JsonKey(name: 'image_url') required final String imageUrl,
      final String? link}) = _$ImageBanner;

  factory ImageBanner.fromJson(Map<String, dynamic> json) =
      _$ImageBanner.fromJson;

  @JsonKey(name: 'image_url')
  String get imageUrl;
  String? get link;
  @JsonKey(ignore: true)
  _$$ImageBannerCopyWith<_$ImageBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonBannerCopyWith<$Res> {
  factory _$$ButtonBannerCopyWith(
          _$ButtonBanner value, $Res Function(_$ButtonBanner) then) =
      __$$ButtonBannerCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String? link});
}

/// @nodoc
class __$$ButtonBannerCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$ButtonBanner>
    implements _$$ButtonBannerCopyWith<$Res> {
  __$$ButtonBannerCopyWithImpl(
      _$ButtonBanner _value, $Res Function(_$ButtonBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? link = freezed,
  }) {
    return _then(_$ButtonBanner(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonBanner implements ButtonBanner {
  const _$ButtonBanner({required this.text, this.link, final String? $type})
      : $type = $type ?? 'buttonBanner';

  factory _$ButtonBanner.fromJson(Map<String, dynamic> json) =>
      _$$ButtonBannerFromJson(json);

  @override
  final String text;
  @override
  final String? link;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.buttonBanner(text: $text, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonBanner &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonBannerCopyWith<_$ButtonBanner> get copyWith =>
      __$$ButtonBannerCopyWithImpl<_$ButtonBanner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return buttonBanner(text, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return buttonBanner?.call(text, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (buttonBanner != null) {
      return buttonBanner(text, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return buttonBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return buttonBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (buttonBanner != null) {
      return buttonBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonBannerToJson(
      this,
    );
  }
}

abstract class ButtonBanner implements ShowCaseBanner {
  const factory ButtonBanner({required final String text, final String? link}) =
      _$ButtonBanner;

  factory ButtonBanner.fromJson(Map<String, dynamic> json) =
      _$ButtonBanner.fromJson;

  String get text;
  String? get link;
  @JsonKey(ignore: true)
  _$$ButtonBannerCopyWith<_$ButtonBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleBannerCopyWith<$Res> {
  factory _$$TitleBannerCopyWith(
          _$TitleBanner value, $Res Function(_$TitleBanner) then) =
      __$$TitleBannerCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TitleBannerCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$TitleBanner>
    implements _$$TitleBannerCopyWith<$Res> {
  __$$TitleBannerCopyWithImpl(
      _$TitleBanner _value, $Res Function(_$TitleBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TitleBanner(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleBanner implements TitleBanner {
  const _$TitleBanner({required this.text, final String? $type})
      : $type = $type ?? 'titleBanner';

  factory _$TitleBanner.fromJson(Map<String, dynamic> json) =>
      _$$TitleBannerFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.titleBanner(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleBanner &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleBannerCopyWith<_$TitleBanner> get copyWith =>
      __$$TitleBannerCopyWithImpl<_$TitleBanner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return titleBanner(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return titleBanner?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (titleBanner != null) {
      return titleBanner(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return titleBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return titleBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (titleBanner != null) {
      return titleBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleBannerToJson(
      this,
    );
  }
}

abstract class TitleBanner implements ShowCaseBanner {
  const factory TitleBanner({required final String text}) = _$TitleBanner;

  factory TitleBanner.fromJson(Map<String, dynamic> json) =
      _$TitleBanner.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$TitleBannerCopyWith<_$TitleBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkdownBannerCopyWith<$Res> {
  factory _$$MarkdownBannerCopyWith(
          _$MarkdownBanner value, $Res Function(_$MarkdownBanner) then) =
      __$$MarkdownBannerCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$MarkdownBannerCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$MarkdownBanner>
    implements _$$MarkdownBannerCopyWith<$Res> {
  __$$MarkdownBannerCopyWithImpl(
      _$MarkdownBanner _value, $Res Function(_$MarkdownBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$MarkdownBanner(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkdownBanner implements MarkdownBanner {
  const _$MarkdownBanner({required this.text, final String? $type})
      : $type = $type ?? 'markdownBanner';

  factory _$MarkdownBanner.fromJson(Map<String, dynamic> json) =>
      _$$MarkdownBannerFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.markdownBanner(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownBanner &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkdownBannerCopyWith<_$MarkdownBanner> get copyWith =>
      __$$MarkdownBannerCopyWithImpl<_$MarkdownBanner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return markdownBanner(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return markdownBanner?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (markdownBanner != null) {
      return markdownBanner(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return markdownBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return markdownBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (markdownBanner != null) {
      return markdownBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkdownBannerToJson(
      this,
    );
  }
}

abstract class MarkdownBanner implements ShowCaseBanner {
  const factory MarkdownBanner({required final String text}) = _$MarkdownBanner;

  factory MarkdownBanner.fromJson(Map<String, dynamic> json) =
      _$MarkdownBanner.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$MarkdownBannerCopyWith<_$MarkdownBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SliderBannerCopyWith<$Res> {
  factory _$$SliderBannerCopyWith(
          _$SliderBanner value, $Res Function(_$SliderBanner) then) =
      __$$SliderBannerCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SliderItem> images});
}

/// @nodoc
class __$$SliderBannerCopyWithImpl<$Res>
    extends _$ShowCaseBannerCopyWithImpl<$Res, _$SliderBanner>
    implements _$$SliderBannerCopyWith<$Res> {
  __$$SliderBannerCopyWithImpl(
      _$SliderBanner _value, $Res Function(_$SliderBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$SliderBanner(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SliderItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderBanner implements SliderBanner {
  const _$SliderBanner(
      {required final List<SliderItem> images, final String? $type})
      : _images = images,
        $type = $type ?? 'sliderBanner';

  factory _$SliderBanner.fromJson(Map<String, dynamic> json) =>
      _$$SliderBannerFromJson(json);

  final List<SliderItem> _images;
  @override
  List<SliderItem> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ShowCaseBanner.sliderBanner(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderBanner &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderBannerCopyWith<_$SliderBanner> get copyWith =>
      __$$SliderBannerCopyWithImpl<_$SliderBanner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)
        imageBanner,
    required TResult Function(String text, String? link) buttonBanner,
    required TResult Function(String text) titleBanner,
    required TResult Function(String text) markdownBanner,
    required TResult Function(List<SliderItem> images) sliderBanner,
  }) {
    return sliderBanner(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult? Function(String text, String? link)? buttonBanner,
    TResult? Function(String text)? titleBanner,
    TResult? Function(String text)? markdownBanner,
    TResult? Function(List<SliderItem> images)? sliderBanner,
  }) {
    return sliderBanner?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'image_url') String imageUrl, String? link)?
        imageBanner,
    TResult Function(String text, String? link)? buttonBanner,
    TResult Function(String text)? titleBanner,
    TResult Function(String text)? markdownBanner,
    TResult Function(List<SliderItem> images)? sliderBanner,
    required TResult orElse(),
  }) {
    if (sliderBanner != null) {
      return sliderBanner(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageBanner value) imageBanner,
    required TResult Function(ButtonBanner value) buttonBanner,
    required TResult Function(TitleBanner value) titleBanner,
    required TResult Function(MarkdownBanner value) markdownBanner,
    required TResult Function(SliderBanner value) sliderBanner,
  }) {
    return sliderBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageBanner value)? imageBanner,
    TResult? Function(ButtonBanner value)? buttonBanner,
    TResult? Function(TitleBanner value)? titleBanner,
    TResult? Function(MarkdownBanner value)? markdownBanner,
    TResult? Function(SliderBanner value)? sliderBanner,
  }) {
    return sliderBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageBanner value)? imageBanner,
    TResult Function(ButtonBanner value)? buttonBanner,
    TResult Function(TitleBanner value)? titleBanner,
    TResult Function(MarkdownBanner value)? markdownBanner,
    TResult Function(SliderBanner value)? sliderBanner,
    required TResult orElse(),
  }) {
    if (sliderBanner != null) {
      return sliderBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderBannerToJson(
      this,
    );
  }
}

abstract class SliderBanner implements ShowCaseBanner {
  const factory SliderBanner({required final List<SliderItem> images}) =
      _$SliderBanner;

  factory SliderBanner.fromJson(Map<String, dynamic> json) =
      _$SliderBanner.fromJson;

  List<SliderItem> get images;
  @JsonKey(ignore: true)
  _$$SliderBannerCopyWith<_$SliderBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderItem _$SliderItemFromJson(Map<String, dynamic> json) {
  return _SliderItem.fromJson(json);
}

/// @nodoc
mixin _$SliderItem {
  String get url => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderItemCopyWith<SliderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderItemCopyWith<$Res> {
  factory $SliderItemCopyWith(
          SliderItem value, $Res Function(SliderItem) then) =
      _$SliderItemCopyWithImpl<$Res, SliderItem>;
  @useResult
  $Res call({String url, String? link});
}

/// @nodoc
class _$SliderItemCopyWithImpl<$Res, $Val extends SliderItem>
    implements $SliderItemCopyWith<$Res> {
  _$SliderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SliderItemCopyWith<$Res>
    implements $SliderItemCopyWith<$Res> {
  factory _$$_SliderItemCopyWith(
          _$_SliderItem value, $Res Function(_$_SliderItem) then) =
      __$$_SliderItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String? link});
}

/// @nodoc
class __$$_SliderItemCopyWithImpl<$Res>
    extends _$SliderItemCopyWithImpl<$Res, _$_SliderItem>
    implements _$$_SliderItemCopyWith<$Res> {
  __$$_SliderItemCopyWithImpl(
      _$_SliderItem _value, $Res Function(_$_SliderItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? link = freezed,
  }) {
    return _then(_$_SliderItem(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SliderItem implements _SliderItem {
  const _$_SliderItem({required this.url, this.link});

  factory _$_SliderItem.fromJson(Map<String, dynamic> json) =>
      _$$_SliderItemFromJson(json);

  @override
  final String url;
  @override
  final String? link;

  @override
  String toString() {
    return 'SliderItem(url: $url, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliderItem &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SliderItemCopyWith<_$_SliderItem> get copyWith =>
      __$$_SliderItemCopyWithImpl<_$_SliderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SliderItemToJson(
      this,
    );
  }
}

abstract class _SliderItem implements SliderItem {
  const factory _SliderItem({required final String url, final String? link}) =
      _$_SliderItem;

  factory _SliderItem.fromJson(Map<String, dynamic> json) =
      _$_SliderItem.fromJson;

  @override
  String get url;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_SliderItemCopyWith<_$_SliderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
