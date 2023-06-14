import 'dart:async';

import 'package:dio/dio.dart';
import 'package:the_store_app/domain/models/category.dart';
import 'package:the_store_app/domain/models/deliveries_request.dart';
import 'package:the_store_app/domain/models/delivery.dart';
import 'package:the_store_app/domain/models/order.dart';
import 'package:the_store_app/domain/models/order_request.dart';
import 'package:the_store_app/domain/models/product_detail.dart';
import 'package:the_store_app/domain/url/catalog_url.dart';
import 'package:the_store_app/domain/entity/catalog/autocomplete_request.dart';
import 'package:the_store_app/domain/entity/catalog/autocomplete_response.dart';
import 'package:the_store_app/domain/entity/catalog/catalog_categories_request.dart';
import 'package:the_store_app/domain/entity/catalog/catalog_products_request.dart';
import 'package:the_store_app/domain/entity/catalog/catalog_products_response.dart';
import 'package:the_store_app/domain/entity/catalog/product_detail_request.dart';
import 'package:the_store_app/domain/entity/catalog/product_detail_response.dart';
import 'package:retrofit/http.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @GET(CatalogUrl.catalogCategories)
  Future<List<Category>> getCategories({
    @Body() required CatalogCategoriesRequest request,
  });

  @POST(CatalogUrl.catalogProductDetail)
  Future<ProductDetailResponse> getProductDetail({
    @Body() required ProductDetailRequest request,
  });

  @POST(CatalogUrl.catalogProducts)
  Future<CatalogProductsResponse> getProducts({
    @Query('page') int? page,
    @Query('size') int? size,
    @Body() required CatalogProductsRequest request,
  });

  @GET(CatalogUrl.catalogProduct)
  Future<ProductDetail> getProduct({
    @Query('product_id') int? productId,
    @Query('city_fias') String? cityFias,
  });

  @POST(CatalogUrl.catalogAutocomplete)
  Future<AutocompleteResponse> getCatalogAutocomplete({
    @Body() required AutocompleteRequest request,
  });

  @POST(CatalogUrl.deliveries)
  Future<List<Delivery>> getDeliveries({
    @Body() required DeliveriesRequest request,
  });

  @POST(CatalogUrl.payments)
  Future<List<Payment>> getPayments({
    @Body() required PaymentsRequest request,
  });

  @POST(CatalogUrl.orderCreate)
  Future<Order> postOrder({
    @Body() required OrderRequest request,
  });
}
