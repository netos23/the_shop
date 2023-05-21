import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_store_app/data/catalog/models/models.dart';

import 'catalog_urls.dart';

part 'catalog_client.g.dart';

@RestApi()
abstract class CatalogClient {
  factory CatalogClient(Dio dio, {String baseUrl}) = _CatalogClient;

  @POST(CatalogUrls.products)
  Future<CatalogProductListDto> getProducts();
}
