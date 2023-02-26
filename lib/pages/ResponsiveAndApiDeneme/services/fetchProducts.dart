import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/Product.dart';


Future<List<Product>> fetchProducts() async {
  var apiUrl = Uri.http( "https://5f210aa9daa42f001666535e.mockapi.io/api/products");

  final response  =await http.get(apiUrl);

  if(response.statusCode == 200) {
    List<Product> products = (json.decode(response.body) as List).map((data) => Product.fromJson(data)).toList();
    return products;
  }else {
    throw Exception("Yükleme Başarısız");
  }
}