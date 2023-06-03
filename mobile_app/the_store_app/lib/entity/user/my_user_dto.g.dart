// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyUserDto _$$_MyUserDtoFromJson(Map<String, dynamic> json) => _$_MyUserDto(
      id: json['id'] as int,
      username: json['username'] as String?,
      userEmail: json['userEmail'] as String?,
      userPhone: json['userPhone'] as String?,
      gender: json['gender'] as String?,
      userAnonimus: json['userAnonimus'] as bool?,
      userFirebase: json['userFirebase'] as int?,
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => MyOrderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      basket: (json['basket'] as List<dynamic>?)
          ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      favourites: (json['favourites'] as List<dynamic>?)
          ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyUserDtoToJson(_$_MyUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'userEmail': instance.userEmail,
      'userPhone': instance.userPhone,
      'gender': instance.gender,
      'userAnonimus': instance.userAnonimus,
      'userFirebase': instance.userFirebase,
      'orders': instance.orders,
      'basket': instance.basket,
      'favourites': instance.favourites,
      'city': instance.city,
    };
