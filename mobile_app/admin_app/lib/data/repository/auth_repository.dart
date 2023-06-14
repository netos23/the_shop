import 'package:dio/dio.dart';
import 'package:admin_app/data/service/auth_service.dart';
import 'package:admin_app/domain/entity/auth/auth_email_part1_request.dart';
import 'package:admin_app/domain/entity/auth/auth_email_part2_request.dart';
import 'package:admin_app/domain/entity/auth/auth_email_part2_response.dart';
import 'package:admin_app/domain/models/profile.dart';
import 'package:admin_app/domain/models/register_brand_request.dart';

class AuthRepository {
  AuthRepository(
    this._authService,
  );

  final AuthService _authService;

  Future<void> emailPart1({
    required AuthEmailPart1Request request,
  }) async {
    await _authService.authEmailPart1(
      request: request,
    );
  }

  Future<AuthEmailPart2Response> emailPart2({
    required AuthEmailPart2Request request,
  }) async {
    try {
      final result = await _authService.authEmailPart2(
        request: request,
      );
      return result;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<Profile> getUser() async {
    try {
      final result = await _authService.getUser();
      return result;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<Profile> patchUser({required Profile request}) async {
    try {
      final result = await _authService.patchUser(request: request);
      return result;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<void> deleteUser() async {
    try {
      await _authService.deleteUser();
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<void> register({required Profile profile}) async {
    try {
      await _authService.register(profile: profile);
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<void> registerBrand({required RegisterBrandRequest request}) async {
    try {
      await _authService.registerBrand(profile: request);
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
