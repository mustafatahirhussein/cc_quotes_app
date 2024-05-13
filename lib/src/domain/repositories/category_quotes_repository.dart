import '../entities/category.dart';

abstract class CategoryQuotesRepository {

  Future<List<Category>> getCategoryQuotes();
}