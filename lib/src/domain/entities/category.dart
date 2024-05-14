import 'package:equatable/equatable.dart';

class Category extends Equatable {
  const Category({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  const Category.empty() : id = 0, name = "";

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
      ];
}
