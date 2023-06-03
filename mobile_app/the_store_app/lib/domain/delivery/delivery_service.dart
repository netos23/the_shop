import 'package:core/core.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';

class DeliveryService implements AsyncLifecycleComponent {
  final Repository<DeliveryMethod> deliveryRepo;
  final ValueStreamWrapper<DeliveryMethod> controller = ValueStreamWrapper();

  DeliveryService({
    required this.deliveryRepo,
  });

  void saveDeliveryMethod(DeliveryMethod method) {
    controller.add(method);
    deliveryRepo.save(method);
  }

  @override
  void dispose() {
    controller.dispose();
  }

  @override
  Future<void> asyncInit() async {
    final delivery = await deliveryRepo.load();
    if (delivery != null) {
      controller.add(delivery);
    }
  }
}
