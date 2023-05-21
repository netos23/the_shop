import 'package:the_store_app/data/catalog/client/catalog_client.dart';
import 'package:the_store_app/data/catalog/mapper/mapper_export.dart';
import 'package:the_store_app/data/catalog/models/catalog_product_list_dto.dart';
import 'package:the_store_app/entity/catalog/catalog_product_list.dart';

class CatalogRepository {
  final CatalogClient _client;

  CatalogRepository(CatalogClient client) : _client = client;

  Future<CatalogProductList> getProducts() async {
    try {
      final productsDto = await _client.getProducts();

      return mapCatalogProductListFromDto(productsDto);
    } catch (e, stack) {
      throw UnimplementedError("implement error handling");
    }
  }
}
