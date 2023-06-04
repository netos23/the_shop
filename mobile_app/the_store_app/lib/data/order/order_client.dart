
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_store_app/data/order/order_urls.dart';
import 'package:the_store_app/entity/entity.dart';

part 'order_client.g.dart';

@RestApi()
abstract class OrderClient{
  factory OrderClient(Dio dio, {String baseUrl}) = _OrderClient;
  
  @GET(OrderUrls.baseOrder)
  Future<MyOrderDto> getOrder(@Path() id);

  @POST(OrderUrls.createOrder)
  Future<MyOrderDto> createOrder(@Body() MyOrderDto order);
}