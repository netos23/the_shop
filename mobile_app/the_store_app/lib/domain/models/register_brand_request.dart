import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_brand_request.freezed.dart';
part 'register_brand_request.g.dart';

@freezed
class RegisterBrandRequest with _$RegisterBrandRequest {
  factory RegisterBrandRequest({
    required String address,
    required String brand,
  }) = _RegisterBrandRequest;

  factory RegisterBrandRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterBrandRequestFromJson(json);
}
