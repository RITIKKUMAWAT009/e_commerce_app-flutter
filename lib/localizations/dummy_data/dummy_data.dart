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
  static final List<CategoryModel>productIcon = [
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


static  List<CategoryModel> products = [
  CategoryModel(id: '1', name: 'Nike Shoes', imageUrl: TImages.productImage1, isFeatured: true),
  CategoryModel(id: '2', name: 'Product 1', imageUrl: TImages.productImage2, isFeatured: false),
  CategoryModel(id: '3', name: 'Product Jacket', imageUrl: TImages.productImage3, isFeatured: true),
  CategoryModel(id: '4', name: 'Product Jeans', imageUrl: TImages.productImage4, isFeatured: false),
  CategoryModel(id: '5', name: 'Product Shirt', imageUrl: TImages.productImage5, isFeatured: true),
  CategoryModel(id: '6', name: 'Product Slippers', imageUrl: TImages.productImage6, isFeatured: false),
  CategoryModel(id: '7', name: 'Nike Air Jordan Black Red', imageUrl: TImages.productImage7, isFeatured: true),
  CategoryModel(id: '8', name: 'Nike Air Jordan Orange', imageUrl: TImages.productImage8, isFeatured: false),
  CategoryModel(id: '9', name: 'Nike Air Jordan White Magenta', imageUrl: TImages.productImage9, isFeatured: true),
  CategoryModel(id: '10', name: 'Nike Air Jordan White Red', imageUrl: TImages.productImage10, isFeatured: false),
  CategoryModel(id: '11', name: 'Samsung S9 Mobile', imageUrl: TImages.productImage11, isFeatured: true),
  CategoryModel(id: '12', name: 'Samsung S9 Mobile with Back', imageUrl: TImages.productImage12, isFeatured: false),
  CategoryModel(id: '13', name: 'Samsung S9 Mobile Back', imageUrl: TImages.productImage13, isFeatured: true),
  CategoryModel(id: '14', name: 'iPhone 8 Mobile', imageUrl: TImages.productImage14, isFeatured: false),
  CategoryModel(id: '15', name: 'iPhone 8 Mobile Back', imageUrl: TImages.productImage15, isFeatured: true),
  CategoryModel(id: '16', name: 'iPhone 8 Mobile Dual Side', imageUrl: TImages.productImage16, isFeatured: false),
  CategoryModel(id: '17', name: 'iPhone 8 Mobile Front', imageUrl: TImages.productImage17, isFeatured: true),
  CategoryModel(id: '18', name: 'Tomi Dog Food', imageUrl: TImages.productImage18, isFeatured: false),
  CategoryModel(id: '19', name: 'Nike Air Jordan Single Blue', imageUrl: TImages.productImage19, isFeatured: true),
  CategoryModel(id: '20', name: 'Nike Air Jordan Single Orange', imageUrl: TImages.productImage20, isFeatured: false),
  CategoryModel(id: '21', name: 'Nike Air Max', imageUrl: TImages.productImage21, isFeatured: true),
  CategoryModel(id: '22', name: 'Nike Basketball Shoe Green Black', imageUrl: TImages.productImage22, isFeatured: false),
  CategoryModel(id: '23', name: 'Nike Wildhorse', imageUrl: TImages.productImage23, isFeatured: true),
  CategoryModel(id: '24', name: 'Tracksuit Black', imageUrl: TImages.productImage24, isFeatured: false),
  CategoryModel(id: '25', name: 'Tracksuit Blue', imageUrl: TImages.productImage25, isFeatured: true),
  CategoryModel(id: '26', name: 'Tracksuit Red', imageUrl: TImages.productImage26, isFeatured: false),
  CategoryModel(id: '27', name: 'Tracksuit Parrot Green', imageUrl: TImages.productImage27, isFeatured: true),
  CategoryModel(id: '28', name: 'Adidas Football', imageUrl: TImages.productImage28, isFeatured: false),
  CategoryModel(id: '29', name: 'Baseball Bat', imageUrl: TImages.productImage29, isFeatured: true),
  CategoryModel(id: '30', name: 'Cricket Bat', imageUrl: TImages.productImage30, isFeatured: false),
  CategoryModel(id: '31', name: 'Tennis Racket', imageUrl: TImages.productImage31, isFeatured: true),
  CategoryModel(id: '32', name: 'Bedroom Bed', imageUrl: TImages.productImage32, isFeatured: false),
  CategoryModel(id: '33', name: 'Bedroom Lamp', imageUrl: TImages.productImage33, isFeatured: true),
  CategoryModel(id: '34', name: 'Bedroom Sofa', imageUrl: TImages.productImage34, isFeatured: false),
  CategoryModel(id: '35', name: 'Bedroom Wardrobe', imageUrl: TImages.productImage35, isFeatured: true),
  CategoryModel(id: '36', name: 'Kitchen Counter', imageUrl: TImages.productImage36, isFeatured: false),
  CategoryModel(id: '37', name: 'Kitchen Dining Table', imageUrl: TImages.productImage37, isFeatured: true),
  CategoryModel(id: '38', name: 'Kitchen Refrigerator', imageUrl: TImages.productImage38, isFeatured: false),
  CategoryModel(id: '39', name: 'Office Chair 1', imageUrl: TImages.productImage39, isFeatured: true),
  CategoryModel(id: '40', name: 'Office Chair 2', imageUrl: TImages.productImage40, isFeatured: false),
  CategoryModel(id: '41', name: 'Office Desk 1', imageUrl: TImages.productImage41, isFeatured: true),
  CategoryModel(id: '42', name: 'Office Desk 2', imageUrl: TImages.productImage42, isFeatured: false),
  CategoryModel(id: '43', name: 'Bedroom Bed Black', imageUrl: TImages.productImage43, isFeatured: true),
  CategoryModel(id: '44', name: 'Bedroom Bed Grey', imageUrl: TImages.productImage44, isFeatured: false),
  CategoryModel(id: '45', name: 'Bedroom Bed Simple Brown', imageUrl: TImages.productImage45, isFeatured: true),
  CategoryModel(id: '46', name: 'Bedroom Bed with Comforter', imageUrl: TImages.productImage46, isFeatured: false),
  CategoryModel(id: '47', name: 'Acer Laptop 1', imageUrl: TImages.productImage47, isFeatured: true),
  CategoryModel(id: '48', name: 'Acer Laptop 2', imageUrl: TImages.productImage48, isFeatured: false),
  CategoryModel(id: '49', name: 'Acer Laptop 3', imageUrl: TImages.productImage49, isFeatured: true),
  CategoryModel(id: '50', name: 'Acer Laptop 4', imageUrl: TImages.productImage50, isFeatured: false),
];

}