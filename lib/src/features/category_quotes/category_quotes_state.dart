import 'package:cc_quotes_app/src/domain/entities/category.dart';

import '../../exports.dart';

class CategoryQuotesState {
  final List<Category> categoryQuotes;
  final bool isLoading;

  CategoryQuotesState({required this.categoryQuotes, required this.isLoading});

  factory CategoryQuotesState.empty() => CategoryQuotesState(categoryQuotes: [], isLoading: false);

  /// When we talk about loading and errors, the we will understand its use case
  CategoryQuotesState copyWith({List<Category>? categoryQuotes, bool? isLoading}) => CategoryQuotesState(categoryQuotes: categoryQuotes ?? this.categoryQuotes, isLoading: isLoading ?? this.isLoading);
}