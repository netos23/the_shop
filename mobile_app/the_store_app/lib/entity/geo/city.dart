import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
class City with _$City {
  factory City({
    required int id,
    required String name,
    required String region,
    required String cityId,
    required double lat,
    required double lon,
  }) = _City;
}
