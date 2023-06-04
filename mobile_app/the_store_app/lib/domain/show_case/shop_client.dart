
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';

import 'shop_urls.dart';

part 'shop_client.g.dart';

@RestApi()
abstract class ShopClient {
  factory ShopClient(Dio dio, {String baseUrl}) = _ShopClient;

  @GET(ShopUrls.baseShop)
  Future<List<PickupPoint>> getShops();
}
