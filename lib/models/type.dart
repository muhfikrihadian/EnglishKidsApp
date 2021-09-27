import 'package:flutter/cupertino.dart';

class Type {
  final String id;
  final String name;
  final String category;
  final String description;
  final String image;
  final String author;

  const Type(
      {@required this.id,
      @required this.name,
      @required this.category,
      @required this.description,
      @required this.image,
      @required this.author,
      });
}
