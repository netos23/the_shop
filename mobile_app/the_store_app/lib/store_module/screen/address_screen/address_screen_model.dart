import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for AddressPage module
class AddressPageModel extends ElementaryModel {
  AddressPageModel(
    ErrorHandler errorHandler,
    this.apiKey,
  ) : super(errorHandler: errorHandler);

  final String apiKey;

  late final DadataClient _client = DadataClient.withToken(
    apiKey,
  );

  Future<AddressResponse?> makeSearch(String search) async {
    try {
      return await _client.suggest(
        AddressSuggestionRequest(
          query: search,
        ),
      );
    } catch (e, stacktrace) {
      handleError(e, stackTrace: stacktrace);
      rethrow;
    }
  }
}
