import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CategoryModel {
  String id;
  String name;
  String parentId;
  String imageUrl;
  bool isFeatured;
bool isFavorite=false;
  CategoryModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isFeatured,
      this.isFavorite=false,
      this.parentId = ''});

  //empty
  static CategoryModel empty() =>
      CategoryModel(id: '', name: '', imageUrl: '', isFeatured: false,isFavorite: false);

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
          isFavorite: data['isFavorite']??false
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
      "isFavorite":isFavorite
    };
  }
}
