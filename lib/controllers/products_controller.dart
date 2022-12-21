import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_flutter_real/models/itens_controller.dart';

class ProductsController {
  ValueNotifier productsController = ValueNotifier([]);
  ValueNotifier inLoadProducts = ValueNotifier(false);
  ValueNotifier productsICanSee = ValueNotifier(6);

  callApi() async {
    var client = http.Client();
    try {
      inLoadProducts.value = true;
      var response =
          await client.get(Uri.parse('https://fakestoreapi.com/products'));
      var res = jsonDecode(response.body);
      var resData = res as List;
      productsController.value =
          resData.map((e) => ItensModel.fromJson(e)).toList();
    } finally {
      client.close();
      inLoadProducts.value = false;
    }
  }
}
