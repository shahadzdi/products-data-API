import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:hw/models/products_model.dart';

class Api {
  String link = "https://dummyjson.com/products";

  Future<List<ProductsModel>> getData() async {
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    var result = jsonDecode(response.body);
    //print(result);

    List<ProductsModel> productsList = [];
    for (var element in result["products"]) {
      productsList.add(ProductsModel.fromJson(element));
    }

    return productsList;
  }
}
