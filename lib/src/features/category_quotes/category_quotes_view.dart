import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_cubit.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_initial_params.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_state.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_initial_params.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_view.dart';

import '../../exports.dart';

class CategoryQuotesView extends StatelessWidget {
  const CategoryQuotesView({super.key, required this.initialParams,});

  final CategoryQuotesInitialParams initialParams;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder(
      bloc: BlocProvider.of<CategoryQuotesCubit>(context),
      builder: (context, state) {
        final cQuotes = state as CategoryQuotesState;

        if (cQuotes.error != null) {
          return Center(
              child: Text(
            cQuotes.error!,
            style: TextStyle(color: Colors.black),
          ));
        }
        return cQuotes.isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: cQuotes.categoryQuotes
                    .map((e) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => QuotesView(initialParams: QuoteInitialParams(category: e))));
                        },
                        child: Text(
                          e.name,
                          style: TextStyle(fontSize: 35),
                        )))
                    .toList(),
              );
      },
    ));
  }
}
