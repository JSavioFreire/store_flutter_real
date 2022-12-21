import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryController {
  ValueNotifier categorysApi = ValueNotifier([]);
  ValueNotifier inLoadCategory = ValueNotifier(false);
  ValueNotifier whatCategory = ValueNotifier('electronics');

  callApi() async {
    var client = http.Client();
    try {
      inLoadCategory.value = (true);
      var response = await client
          .get(Uri.parse('https://fakestoreapi.com/products/categories'));
      var res = jsonDecode(response.body);
      var resData = res as List;
      categorysApi.value = resData;
    } finally {
      client.close();
      inLoadCategory.value = (false);
    }
  }
}
