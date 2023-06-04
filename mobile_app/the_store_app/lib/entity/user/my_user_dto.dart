import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_store_app/entity/entity.dart';
part 'my_user_dto.freezed.dart';
part 'my_user_dto.g.dart';


@Freezed(
  fromJson: true,
  toJson: true,
)
class MyUserDto with _$MyUserDto{
  factory MyUserDto({
    String? username,
    String? userEmail,
    String? userPhone,
    String? gender,
    bool? userAnonimus,
    int? userFirebase,
    List<MyOrderDto>? orders,
    List<ProductDto>? basket,
    List<ProductDto>? favourites,
    City? city,
}) = _MyUserDto;

  factory MyUserDto.fromJson(Map<String, dynamic> json) => _$MyUserDtoFromJson(json);
}