
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../src/data/persistence/serializable.dart';

part 'city.freezed.dart';

part 'city.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
)
class City with _$City implements Serializable<City> {
  factory City({
    @JsonKey(name: 'cityName') required String name,
    @JsonKey(name: 'cityRegion') required String region,
    @JsonKey(name: 'cityCode') required String cityId,
    double? lat,
    double? lon,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
