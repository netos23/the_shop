import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/user/user_client.dart';
import 'package:the_store_app/entity/entity.dart';
import 'package:the_store_app/entity/user/store_user.dart';

// TODO: cover with documentation
/// Default Elementary model for FavouritesScreen module
class FavouritesScreenModel extends ElementaryModel {
  FavouritesScreenModel({
    super.errorHandler,
    required this.client,
});

  final UserClient client; //????

  Future<List<ShortProduct>> getFavourites() async {
    //repo call

    await Future.delayed(const Duration(seconds: 2));

    return [
      ShortProduct(id: 0,
          productName: "productName",
          productPrice: Decimal.parse("555.55"),
          basketQuantity: 5,
          productOldPrice: Decimal.parse("955.55"),
          pictures: []),
      ShortProduct(id: 0,
          productName: "productName",
          productPrice: Decimal.parse("255.55"),
          basketQuantity: 3,
          productOldPrice: Decimal.parse("555.55"),
          pictures: []),
      ShortProduct(id: 0,
          productName: "asdf",
          productPrice: Decimal.parse("555.55"),
          basketQuantity: 5,
          productOldPrice: Decimal.parse("955.55"),
          pictures: []),
      ShortProduct(id: 0,
          productName: "qwe",
          productPrice: Decimal.parse("555.55"),
          basketQuantity: 5,
          productOldPrice: Decimal.parse("955.55"),
          pictures: [])
    ];
  }
}
