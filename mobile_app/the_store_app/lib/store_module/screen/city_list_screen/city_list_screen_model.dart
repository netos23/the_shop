import 'package:elementary/elementary.dart';
import 'package:the_store_app/store_module/data/geo/geo_client.dart';
import 'package:the_store_app/store_module/entity/geo/city.dart';

// TODO: cover with documentation
/// Default Elementary model for CityListPage module
class CityListPageModel extends ElementaryModel {
  CityListPageModel({
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
