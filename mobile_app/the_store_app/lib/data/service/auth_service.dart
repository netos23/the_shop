import 'dart:async';

import 'package:dio/dio.dart';
import 'package:the_store_app/domain/models/profile.dart';
import 'package:the_store_app/domain/models/register_brand_request.dart';
import 'package:the_store_app/domain/url/auth_url.dart';
import 'package:the_store_app/domain/entity/auth/auth_email_part1_request.dart';
import 'package:the_store_app/domain/entity/auth/auth_email_part2_request.dart';
import 'package:the_store_app/domain/entity/auth/auth_email_part2_response.dart';
import 'package:retrofit/http.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(AuthUrl.authEmailPart1)
  Future<void> authEmailPart1({
    @Body() required AuthEmailPart1Request request,
  });

  @POST(AuthUrl.authEmailPart2)
  Future<AuthEmailPart2Response> authEmailPart2({
    @Body() required AuthEmailPart2Request request,
  });

  @PATCH(AuthUrl.authUser)
  Future<Profile> patchUser({
    @Body() required Profile request,
  });

  @GET(AuthUrl.authUser)
  Future<Profile> getUser();

  @DELETE(AuthUrl.authUser)
  Future<void> deleteUser();

  @POST(AuthUrl.authRegister)
  Future<void> register({@Body() required Profile profile});

  @POST(AuthUrl.authFarmRegister)
  Future<void> registerBrand({
    @Body() required RegisterBrandRequest profile,
  });
}
