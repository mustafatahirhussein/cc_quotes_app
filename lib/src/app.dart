import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_initial_params.dart';

import 'exports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryQuotesView(initialParams: CategoryQuotesInitialParams(),),
    );
  }
}
