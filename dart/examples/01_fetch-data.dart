import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
  num id;
  String title;
  String description;
  num price;
  num discountPercentage;
  num rating;
  num stock;
  String brand;
  String category;
  String thumbnail;
  List<dynamic> images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      discountPercentage: json['discountPercentage'],
      rating: json['rating'],
      stock: json['stock'],
      brand: json['brand'],
      category: json['category'],
      thumbnail: json['thumbnail'],
      images: json['images'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'brand': brand,
      'category': category,
      'thumbnail': thumbnail,
      'images': images,
    };
  }

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, thumbnail: $thumbnail, images: $images)';
  }
}

dynamic fetchProduct() async {
  final response = await http.get(
    Uri.parse('https://dummyjson.com/products/1'),
  );

  if (response.statusCode == 200) {
    return Product.fromJson(json.decode(response.body));
  } else {
    return 'Failed to load product';
  }
}

void main() async {
  var product = await fetchProduct();

  print(product.toString());
}
