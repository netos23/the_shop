import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:dio/dio.dart';
import 'package:admin_app/data/interseptor.dart';
import 'package:admin_app/data/repository/auth_repository.dart';
import 'package:admin_app/data/repository/dadata_repository.dart';
import 'package:admin_app/data/repository/token_ropository.dart';
import 'package:admin_app/data/service/auth_service.dart';
import 'package:admin_app/data/service/banner_service.dart';
import 'package:admin_app/data/service/cart_service.dart';
import 'package:admin_app/data/service/catalog_service.dart';
import 'package:admin_app/domain/use_case/profile_use_case.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final tokenDaData = '6cbb9f2ecf9886a6f52e1bfb7c78ef3e8e05a9ed';
  final Dio dio = Dio();
  final TokenRepository tokenRepository = TokenRepository();
  late final AuthService authService = AuthService(dio);
  late final CartService _cartService = CartService(dio);
  late final BannerService bannerService = BannerService(dio);
  late final CatalogService catalogService = CatalogService(dio);
  late final GeolocationDadataRepository dadataRepository =
      GeolocationDadataRepository(
    DadataSuggestions(tokenDaData),
  );
  late final ProfileUseCase profileUseCase =
      ProfileUseCase(tokenRepository, AuthRepository(authService));

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://farm.fbtw.ru/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();

    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );

    profileUseCase.init();
  }
}
