import 'package:cc_quotes_app/src/domain/repositories/category_quotes_repository.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_state.dart';
import '../../exports.dart';

class CategoryQuotesCubit extends Cubit<CategoryQuotesState> {
  CategoryQuotesCubit(this.categoryQuotesRepository) : super(CategoryQuotesState.empty());

  final CategoryQuotesRepository categoryQuotesRepository;

  fetchCategoryQuotes() async {
    /// We kept the error null, in case we are showing pull-to-refresh etc.
    emit(state.copyWith(isLoading: true, error: null));

    final item = await categoryQuotesRepository.getCategoryQuotes();

    /// DartZ approach
    item.fold((error) {
      emit(state.copyWith(error: error.error));
    }, (category) {
    emit(state.copyWith(categoryQuotes: category, isLoading: false));
    });
  }
}