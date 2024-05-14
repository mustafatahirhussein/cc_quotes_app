import 'package:cc_quotes_app/src/domain/entities/category.dart';

class CategoryQuotesState {
  final List<Category> categoryQuotes;
  final bool isLoading;
  final String? error;

  CategoryQuotesState({required this.categoryQuotes, required this.isLoading, this.error,});

  factory CategoryQuotesState.initial() => CategoryQuotesState(categoryQuotes: [], isLoading: false);

  /// When we talk about loading and errors, the we will understand its use case
  CategoryQuotesState copyWith({List<Category>? categoryQuotes, bool? isLoading, String? error}) => CategoryQuotesState(categoryQuotes: categoryQuotes ?? this.categoryQuotes, isLoading: isLoading ?? this.isLoading, error: error ?? this.error);
}