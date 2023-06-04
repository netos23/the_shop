import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:kiwi/kiwi.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/domain/geo/city_service.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'package:the_store_app/entity/geo/city.dart';
import 'package:the_store_app/error_handler/default_error_handler.dart';

class DiContainer implements AsyncInitLifecycleComponent {
  static final DiContainer _instance = DiContainer._internal();

  factory DiContainer() => _instance;

  DiContainer._internal();

  final KiwiContainer container = KiwiContainer();

  @override
  Future<void> asyncInit() async {
    // error handler
    final errorHandler = DefaultErrorHandler()..init();
    container.registerInstance<ErrorHandler>(errorHandler);
    container.registerInstance<DefaultErrorHandler>(errorHandler);

    // delivery
    final deliveryRepository = Repository<DeliveryMethod>(
      key: 'selected-delivery',
      jsonFactory: DeliveryMethod.fromJson,
    );
    final deliveryService = DeliveryService(deliveryRepo: deliveryRepository);
    container.registerInstance(deliveryService);

    // geo
    final cityRepository = Repository<City>(
      key: 'selected-city',
      jsonFactory: City.fromJson,
    );
    final cityService = CityService(cityRepo: cityRepository);
    container.registerInstance(cityService);

    // dio
    container.registerSingleton(
      (_) => Dio(),
    );

    await Future.wait([
      deliveryService.asyncInit(),
      cityService.asyncInit(),
    ]);
  }

  T call<T>() => container.call();
}
