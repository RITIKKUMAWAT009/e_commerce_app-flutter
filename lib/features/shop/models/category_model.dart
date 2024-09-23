import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String id;
  String name;
  String parentId;
  String imageUrl;
  bool isFeatured;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isFeatured,
      this.parentId = ''});

  //empty
  static CategoryModel empty() =>
      CategoryModel(id: '', name: '', imageUrl: '', isFeatured: false);

  //from json to model
  factory CategoryModel.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return CategoryModel(
          id: document.id??'',
          name: data['name']??'',
          imageUrl: data['imageUrl']??'',
          isFeatured: data['isFeatured']??false,
      );
    } else {
      return CategoryModel.empty();
    }
  }

//model to json
 Map<String,dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
    };
  }
}
