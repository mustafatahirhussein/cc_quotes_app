import 'package:cc_quotes_app/src/domain/entities/category.dart';

class QuotesState {
  final Category category;

  QuotesState({required this.category});

  factory QuotesState.initial() => QuotesState(category: Category.empty());

  QuotesState copyWith({Category? category}) => QuotesState(category: category ?? this.category,);
}