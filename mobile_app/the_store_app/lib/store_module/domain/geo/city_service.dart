

import 'package:the_store_app/store_module/entity/entity.dart';

import '../../../src/data/persistence/repository.dart';
import '../../../util/lifecycle_component.dart';
import '../../../util/value_stream_wrapper.dart';

class CityService implements AsyncLifecycleComponent {
  final Repository<City> cityRepo;
  final ValueStreamWrapper<City> controller = ValueStreamWrapper();

  CityService({
    required this.cityRepo,
  });

  void saveCity(City city) {
    controller.add(city);
    cityRepo.save(city);
  }

  @override
  void dispose() {
    controller.dispose();
  }

  @override
  Future<void> asyncInit() async {
    final city = await cityRepo.load();
    if (city != null) {
      controller.add(city);
    }
  }
}
