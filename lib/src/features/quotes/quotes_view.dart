import 'package:cc_quotes_app/src/domain/entities/category.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_cubit.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_initial_params.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_state.dart';

import '../../exports.dart';

class QuotesView extends StatefulWidget {
  const QuotesView({super.key, required this.initialParams,});

  final QuoteInitialParams initialParams;

  @override
  State<QuotesView> createState() => _QuotesViewState();
}

class _QuotesViewState extends State<QuotesView> {

  late QuotesCubit bloc;

  @override
  void initState() {
    // TODO: Fix this later
    bloc = BlocProvider.of<QuotesCubit>(context);
    bloc.onInit(widget.initialParams);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          final quotes = state as QuotesState;
          return Center(
            child: ListTile(
              title: Text(quotes.category.name),
            ),
          );
        }
      ),
    );
  }
}
