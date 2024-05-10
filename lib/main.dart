import 'package:cc_quotes_app/src/app.dart';
import 'package:cc_quotes_app/src/di/service_locator.dart';
import 'package:cc_quotes_app/src/domain/repositories/category_quotes_repository.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_cubit.dart';
import 'package:get_it/get_it.dart';

import 'src/exports.dart';

void main() {
  setupLocator();

  GetIt getIt = GetIt.instance;
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryQuotesCubit(getIt.get<CategoryQuotesRepository>())..fetchCategoryQuotes(),
        ),
      ],
      child: App(),
    ),
  );
}
