import 'package:cc_quotes_app/src/domain/entities/category.dart';
import 'package:cc_quotes_app/src/domain/exceptions/category_quotes_failure.dart';
import 'package:cc_quotes_app/src/domain/repositories/category_quotes_repository.dart';
import 'package:cc_quotes_app/src/exports.dart';
import 'package:dartz/dartz.dart';

class RestApiCategoryQuotesRepository implements CategoryQuotesRepository {

  @override
  Future<Either<CategoryQuotesFailure, List<Category>>> getCategoryQuotes() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      String res = await rootBundle.loadString(
          'assets/quotes_via_category.json');

      CategoryQuotesModel item = CategoryQuotesModel.fromJson(jsonDecode(res));
      return right(item.categories.map((e) => e.toDomain()).toList());
    }
    catch (ex) {
      return left(CategoryQuotesFailure(error: ex.toString()));
    }
  }
}