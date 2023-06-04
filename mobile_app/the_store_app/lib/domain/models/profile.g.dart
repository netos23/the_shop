// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      email: json['email'] as String,
      firstName: json['first_name'] as String?,
      secondName: json['second_name'] as String?,
      birthDate: json['birth_date'] as String?,
      gender: json['gender'] as String?,
      role: json['role'] as String?,
      phone: json['phone'] as String?,
      brand: json['brand'] as String?,
      tgChatStartLink: json['tg_chat_start_link'] as String?,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) {
  final val = <String, dynamic>{
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('second_name', instance.secondName);
  writeNotNull('birth_date', instance.birthDate);
  writeNotNull('gender', instance.gender);
  writeNotNull('role', instance.role);
  writeNotNull('phone', instance.phone);
  writeNotNull('brand', instance.brand);
  writeNotNull('tg_chat_start_link', instance.tgChatStartLink);
  return val;
}
