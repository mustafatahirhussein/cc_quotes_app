import 'package:cc_quotes_app/src/app.dart';
import 'package:cc_quotes_app/src/di/service_locator.dart';
import 'package:cc_quotes_app/src/data/rest_api_category_quotes_repository.dart';
import 'package:cc_quotes_app/src/domain/repositories/category_quotes_repository.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_cubit.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_cubit.dart';
import 'package:get_it/get_it.dart';

import 'src/exports.dart';

void main() {
  setupLocator();

  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<CategoryQuotesRepository>(RestApiCategoryQuotesRepository());
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryQuotesCubit(getIt())..fetchCategoryQuotes(),
        ),
        BlocProvider(
          create: (context) => QuotesCubit(),
        ),
      ],
      child: App(),
    ),
  );
}
