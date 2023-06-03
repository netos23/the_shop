import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';

// TODO: cover with documentation
/// Default Elementary model for MapPointsScreen module
class MapPointsScreenModel extends ElementaryModel {
  MapPointsScreenModel({super.errorHandler});

  Future<List<PickupPoint>> getPoints() async {
    return [
      PickupPoint(
        id: 0,
        shopName: 'Магнит',
        shopAddress: 'Воронеж, Переверткина, 10',
        shopPhone: '+783342343423',
        shopWorkhours: '10:00-20:00 пн-пт; вс сб - выходной',
        shopPicture: '',
        lat: Decimal.fromJson('51.691894'),
        lon: Decimal.fromJson('39.258121'),
      ),
      PickupPoint(
        id: 1,
        shopName: 'Магнит',
        shopAddress: 'Воронеж, Переверткина, 10',
        shopPhone: '+783342343423',
        shopWorkhours: '10:00-20:00 пн-пт; вс сб - выходной',
        shopPicture: '',
        lat: Decimal.fromJson('51.693401'),
        lon: Decimal.fromJson('39.255210'),
      ),
      PickupPoint(
        id: 2,
        shopName: 'Магнит',
        shopAddress: 'Воронеж, Переверткина, 10',
        shopPhone: '+783342343423',
        shopWorkhours: '10:00-20:00 пн-пт; вс сб - выходной',
        shopPicture: '',
        lat: Decimal.fromJson('51.694215'),
        lon: Decimal.fromJson('39.256107'),
      ),
    ];
  }
}
