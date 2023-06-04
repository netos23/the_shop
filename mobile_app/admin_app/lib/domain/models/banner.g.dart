// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageBanner _$$ImageBannerFromJson(Map<String, dynamic> json) =>
    _$ImageBanner(
      imageUrl: json['image_url'] as String,
      link: json['link'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ImageBannerToJson(_$ImageBanner instance) {
  final val = <String, dynamic>{
    'image_url': instance.imageUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('link', instance.link);
  val['type'] = instance.$type;
  return val;
}

_$ButtonBanner _$$ButtonBannerFromJson(Map<String, dynamic> json) =>
    _$ButtonBanner(
      text: json['text'] as String,
      link: json['link'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ButtonBannerToJson(_$ButtonBanner instance) =>
    <String, dynamic>{
      'text': instance.text,
      'link': instance.link,
      'type': instance.$type,
    };

_$TitleBanner _$$TitleBannerFromJson(Map<String, dynamic> json) =>
    _$TitleBanner(
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TitleBannerToJson(_$TitleBanner instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.$type,
    };

_$MarkdownBanner _$$MarkdownBannerFromJson(Map<String, dynamic> json) =>
    _$MarkdownBanner(
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MarkdownBannerToJson(_$MarkdownBanner instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.$type,
    };

_$SliderBanner _$$SliderBannerFromJson(Map<String, dynamic> json) =>
    _$SliderBanner(
      images: (json['images'] as List<dynamic>)
          .map((e) => SliderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SliderBannerToJson(_$SliderBanner instance) =>
    <String, dynamic>{
      'images': instance.images,
      'type': instance.$type,
    };

_$_SliderItem _$$_SliderItemFromJson(Map<String, dynamic> json) =>
    _$_SliderItem(
      url: json['url'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_SliderItemToJson(_$_SliderItem instance) =>
    <String, dynamic>{
      'url': instance.url,
      'link': instance.link,
    };
