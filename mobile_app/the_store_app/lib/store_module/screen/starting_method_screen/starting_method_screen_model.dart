import 'package:elementary/elementary.dart';
import 'package:the_store_app/store_module/domain/delivery/delivery_service.dart';
import 'package:the_store_app/store_module/entity/delivery/delivery_method.dart';

// TODO: cover with documentation
/// Default Elementary model for StartingMethodPage module
class StartingMethodPageModel extends ElementaryModel {
  StartingMethodPageModel(
    ErrorHandler errorHandler,
    this._deliveryService,
  ) : super(errorHandler: errorHandler);

  final DeliveryService _deliveryService;

  void saveDelivery(DeliveryMethod res) {
    _deliveryService.saveDeliveryMethod(res);
  }
}
