import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_store_app/data/geo/geo_urls.dart';
import 'package:the_store_app/entity/geo/city.dart';

import 'geo_urls.dart';

part 'geo_client.g.dart';

@RestApi()
abstract class GeoClient {
  factory GeoClient(Dio dio, {String baseUrl}) = _GeoClient;

  @POST(GeoUrls.baseGeo)
  Future<List<City>> getCities();
}
