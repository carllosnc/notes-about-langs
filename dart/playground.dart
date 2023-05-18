import 'dart:convert';
import 'package:http/http.dart' as http;
import "package:test/test.dart";

class Product {
  int id;
  String title;
  String description;
  num price;
  num discountPercentage;
  num rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<dynamic> images = [];

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

  @override
  String toString() {
    return 'Product: {id: $id, title: $title, price: $price, total images: ${images.length}}';
  }

  //serialize
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'price': price,
        'discount': discountPercentage,
        'rating': rating,
        'stock': stock,
        'brand': brand,
        'category': category,
        'thumbnail': thumbnail,
        'images': images,
      };

  //deserialize
  factory Product.fromJson(Map<String, dynamic> json) => Product(
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

void main(List<String> args) async {
  Product result = await http
      .get(Uri.parse('https://dummyjson.com/products/1'))
      .then((response) {
    Map<String, dynamic> data = json.decode(response.body);
    Product product = Product.fromJson(data);

    return product;
  });

  test("Check product id", () {
    expect(result, isNotNull);
  });

  print(result);
}
