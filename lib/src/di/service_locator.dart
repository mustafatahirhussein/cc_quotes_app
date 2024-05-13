
import 'package:cc_quotes_app/src/data/rest_api_category_quotes_repository.dart';
import 'package:get_it/get_it.dart';

setupLocator() {
  GetIt getIt = GetIt.instance;

  getIt.registerSingleton<RestApiCategoryQuotesRepository>(RestApiCategoryQuotesRepository());
}