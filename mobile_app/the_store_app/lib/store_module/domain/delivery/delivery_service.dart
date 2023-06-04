
import 'package:the_store_app/store_module/entity/delivery/delivery_method.dart';

import '../../../src/data/persistence/repository.dart';
import '../../../util/lifecycle_component.dart';
import '../../../util/value_stream_wrapper.dart';

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
