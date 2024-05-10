import 'package:cc_quotes_app/src/domain/entities/category.dart';

class CategoryQuotesModel {
  CategoryQuotesModel({
    required this.categories,
  });
  late final List<CategoryData> categories;

  CategoryQuotesModel.fromJson(Map<String, dynamic> json){
    categories = List.from(json['categories']).map((e)=>CategoryData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['categories'] = categories.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class CategoryData {
  CategoryData({
    required this.id,
    required this.name,
  });
  late final int id;
  late final String name;

  CategoryData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }

  Category toDomain() => Category(id: id, name: name);
}