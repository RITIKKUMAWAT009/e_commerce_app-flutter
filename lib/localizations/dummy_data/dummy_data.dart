import 'package:e_commerce_app/utils/constants/image_strings.dart';

import '../../features/shop/models/category_model.dart';

class DummyData {
  static final List<CategoryModel>categories = [
    CategoryModel(id: '1', name: 'Sports', imageUrl: TImages.sportIcon, isFeatured: true),
    CategoryModel(id: '2', name: 'Furniture', imageUrl: TImages.furnitureIcon, isFeatured: true),
    CategoryModel(id: '3', name: 'Electronics', imageUrl: TImages.electronicsIcon, isFeatured: true),
    CategoryModel(id: '4', name: 'Cloths', imageUrl: TImages.clothIcon, isFeatured: true),
    CategoryModel(id: '5', name: 'Animals', imageUrl: TImages.animalIcon, isFeatured: true),
    CategoryModel(id: '6', name: 'Shoes', imageUrl: TImages.shoeIcon, isFeatured: true),
    CategoryModel(id: '7', name: 'Cosmetics', imageUrl: TImages.cosmeticsIcon, isFeatured: true),
    CategoryModel(id: '8', name: 'Jewelery', imageUrl: TImages.jeweleryIcon, isFeatured: true),

    //subCategories
    CategoryModel(id: '9', name: 'Sport Shoes', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '1'),
    CategoryModel(id: '10', name: 'Track Suits', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '1'),
    CategoryModel(id: '11', name: 'Sports Equipments', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '1'),
   //Furniture
    CategoryModel(id: '12', name: 'BedRoom furniture', imageUrl: TImages.furnitureIcon, isFeatured: false,parentId: '2'),
    CategoryModel(id: '13', name: 'Kitchen Furniture', imageUrl: TImages.furnitureIcon, isFeatured: false,parentId: '2'),
    CategoryModel(id: '14', name: 'Office furniture', imageUrl: TImages.furnitureIcon, isFeatured: false,parentId: '2'),
   //Electronics
    CategoryModel(id: '15', name: 'Laptops', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '3'),
    CategoryModel(id: '16', name: 'Mobile phones', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '3'),
    CategoryModel(id: '17', name: '', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '3'),

  ];
  static final List<CategoryModel>products = [
    CategoryModel(id: '1', name: 'Sport', imageUrl: TImages.sportIcon, isFeatured: true,),
    CategoryModel(id: '2', name: 'Furniture', imageUrl: TImages.furnitureIcon, isFeatured: true),
    CategoryModel(id: '3', name: 'Electronic', imageUrl: TImages.electronicsIcon, isFeatured: true),
    CategoryModel(id: '4', name: 'Cloths', imageUrl: TImages.clothIcon, isFeatured: true),
    CategoryModel(id: '5', name: 'Animal', imageUrl: TImages.animalIcon, isFeatured: true),
    CategoryModel(id: '6', name: 'Shoes', imageUrl: TImages.shoeIcon, isFeatured: true),
    CategoryModel(id: '7', name: 'Cosmetic', imageUrl: TImages.cosmeticsIcon, isFeatured: true),
    CategoryModel(id: '8', name: 'Jewelery', imageUrl: TImages.jeweleryIcon, isFeatured: true),

    //subCategories
    CategoryModel(id: '9', name: 'Sport Shoes', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '1'),
    CategoryModel(id: '10', name: 'Track Suits', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '1'),
    CategoryModel(id: '11', name: 'Sports Equipments', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '1'),
   //Furniture
    CategoryModel(id: '12', name: 'BedRoom furniture', imageUrl: TImages.furnitureIcon, isFeatured: false,parentId: '2'),
    CategoryModel(id: '13', name: 'Kitchen Furniture', imageUrl: TImages.furnitureIcon, isFeatured: false,parentId: '2'),
    CategoryModel(id: '14', name: 'Office furniture', imageUrl: TImages.furnitureIcon, isFeatured: false,parentId: '2'),
   //Electronics
    CategoryModel(id: '15', name: 'Laptops', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '3'),
    CategoryModel(id: '16', name: 'Mobile phones', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '3'),
    CategoryModel(id: '17', name: '', imageUrl: TImages.sportIcon, isFeatured: false,parentId: '3'),

  ];
}