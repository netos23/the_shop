import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/user/user_client.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/entity/user/my_user_dto.dart';

// TODO: cover with documentation
/// Default Elementary model for ProfileDataUpdateScreen module
class ProfileDataUpdateScreenModel extends ElementaryModel {
  ProfileDataUpdateScreenModel({super.errorHandler,
  required this.client});

  final UserClient client;
  MyUserDto? userDto;

  Future<MyUserDto> getUser() async{
    //repo call
    await Future.delayed(const Duration(seconds: 1));
    return MyUserDto(username: "Ясо сучлены",
        userEmail: "123@email.com",
        gender: 'female',
        userPhone: "81231212123",

        );
  }
}
