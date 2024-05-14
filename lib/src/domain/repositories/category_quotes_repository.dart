import 'package:cc_quotes_app/src/domain/exceptions/category_quotes_failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/category.dart';

abstract class CategoryQuotesRepository {

  Future<Either<CategoryQuotesFailure, List<Category>>> getCategoryQuotes();
}