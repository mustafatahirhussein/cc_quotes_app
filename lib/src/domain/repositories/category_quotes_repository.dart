import 'package:cc_quotes_app/src/domain/entities/category.dart';
import 'package:cc_quotes_app/src/exports.dart';

class CategoryQuotesRepository {

  Future<List<Category>> getCategoryQuotes() async {
    await Future.delayed(Duration(seconds: 2));
    String res = await rootBundle.loadString('assets/quotes_via_category.json');

    CategoryQuotesModel item = CategoryQuotesModel.fromJson(jsonDecode(res));
    return item.categories.map((e) => e.toDomain()).toList();
  }
}