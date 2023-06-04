import 'dart:async';

import 'package:dio/dio.dart';
import 'package:admin_app/domain/models/order.dart';
import 'package:admin_app/feature/order_history/api/order_history_url.dart';
import 'package:retrofit/http.dart';

part 'order_history_service.g.dart';

@RestApi()
abstract class OrderHistoryService {
  factory OrderHistoryService(Dio dio, {String baseUrl}) = _OrderHistoryService;

  @GET(OrderHistoryUrl.orderList)
  Future<List<Order>> getOrderHistory({
    @Query('brand') String? brand,
  });
}
