import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_cubit.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_state.dart';

import '../../exports.dart';

class CategoryQuotesView extends StatelessWidget {
  const CategoryQuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: BlocProvider.of<CategoryQuotesCubit>(context),
        builder: (context, state) {
          final cQuotes = state as CategoryQuotesState;

          print(cQuotes.isLoading);
          return cQuotes.isLoading ? Center(child: CircularProgressIndicator()) : ListView(
            children: cQuotes.categoryQuotes.map((e) => Text(e.name, style: TextStyle(fontSize: 35),)).toList(),
          );
        },
      )
    );
  }
}
