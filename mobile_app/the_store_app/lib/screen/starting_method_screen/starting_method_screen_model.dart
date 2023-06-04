import 'package:elementary/elementary.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';

// TODO: cover with documentation
/// Default Elementary model for StartingMethodScreen module
class StartingMethodScreenModel extends ElementaryModel {
  StartingMethodScreenModel(
    ErrorHandler errorHandler,
    this._deliveryService,
  ) : super(errorHandler: errorHandler);

  final DeliveryService _deliveryService;

  void saveDelivery(DeliveryMethod res) {
    _deliveryService.saveDeliveryMethod(res);
  }
}
