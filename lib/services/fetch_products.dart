import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shope/models/Product.dart';

// Fetch our Products from API
Future<List<Product>> fetchProducts() async {
  List<Product> products = [];
  try {
    const String apiUrl =
        "https://5f210aa9daa42f001666535e.mockapi.io/api/products";

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      products = (json.decode(response.body) as List)
          .map((data) => Product.fromJson(data))
          .toList();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load');
    }
  } on Exception catch (e) {
    print(e);
  }
  return products;
  print(products);
}
