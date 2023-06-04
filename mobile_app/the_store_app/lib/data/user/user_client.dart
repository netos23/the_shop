import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_store_app/data/user/user_urls.dart';
import 'package:the_store_app/entity/user/store_user.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET(UserUrls.baseUser)
  Future<StoreUser> getUserInfo();

  @POST(UserUrls.baseUser)
  Future<void> updateUser(@Body() StoreUser userDto);
}
