import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_store_app/data/user/user_urls.dart';
import 'package:the_store_app/entity/user/my_user_dto.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET(UserUrls.baseUser)
  Future<MyUserDto> getUserInfo(@Path() int id);
}
