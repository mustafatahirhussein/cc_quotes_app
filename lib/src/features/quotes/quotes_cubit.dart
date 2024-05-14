import 'package:cc_quotes_app/src/domain/entities/category.dart';
import 'package:cc_quotes_app/src/domain/repositories/category_quotes_repository.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_state.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_initial_params.dart';
import 'package:cc_quotes_app/src/features/quotes/quotes_state.dart';
import '../../exports.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit() : super(QuotesState.initial());

  void onInit(QuoteInitialParams initialParams) {
    emit(state.copyWith(category: initialParams.category));
  }

}