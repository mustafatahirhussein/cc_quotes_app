import 'dart:convert';

import 'package:cc_quotes_app/src/domain/repositories/category_quotes_repository.dart';
import 'package:cc_quotes_app/src/features/category_quotes/category_quotes_state.dart';
import 'package:flutter/services.dart';

import '../../exports.dart';

class CategoryQuotesCubit extends Cubit<CategoryQuotesState> {
  CategoryQuotesCubit(this.categoryQuotesRepository) : super(CategoryQuotesState.empty());

  final CategoryQuotesRepository categoryQuotesRepository;

  fetchCategoryQuotes() async {
    emit(state.copyWith(isLoading: true));

    final item = await categoryQuotesRepository.getCategoryQuotes();
    emit(state.copyWith(categoryQuotes: item, isLoading: false));
  }
}