import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/geo/geo_client.dart';
import 'package:the_store_app/entity/geo/city.dart';

// TODO: cover with documentation
/// Default Elementary model for CityListScreen module
class CityListScreenModel extends ElementaryModel {
  CityListScreenModel({
    super.errorHandler,
    required this.client,
  });

  final GeoClient client;
  final List<City> _cities = [];

  Future<List<City>> getCities(String? search) async {
    // repo call

    if (_cities.isEmpty) {
      try {
        final cities = await client.getCities();
        _cities.addAll(cities);
      } catch (error, stacktrace) {
        handleError(error, stackTrace: stacktrace);
        rethrow;
      }
    }

    var cities = _cities;

    if (search != null) {
      cities = cities.where((city) => city.name.startsWith(search)).toList();
    }

    return cities;
  }
}
