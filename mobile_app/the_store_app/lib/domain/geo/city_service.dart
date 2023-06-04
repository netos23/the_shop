import 'package:core/core.dart';
import 'package:the_store_app/entity/geo/city.dart';

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
