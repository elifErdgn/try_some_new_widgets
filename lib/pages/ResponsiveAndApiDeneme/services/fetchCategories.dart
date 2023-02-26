import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/Categories.dart';

Future<List<Category>> fetchCategories() async {
   var apiUrl = Uri.https("https://5f210aa9daa42f001666535e.mockapi.io/api/categories");

 /// const String apiUrl = "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";

  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Category> categories = (json.decode(response.body) as List)
        .map((data) => Category.fromJson(data))
        .toList();
    print(categories);
    return categories;
  } else {
    throw Exception("Yükleme Hatası");
  }
}