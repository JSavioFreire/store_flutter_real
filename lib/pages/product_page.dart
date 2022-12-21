import 'package:flutter/material.dart';
import '../widgets/app_bar/app_bar_products.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heiAppBar = MediaQuery.of(context).size.height * 0.1;
    final arg = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    return Scaffold(
      appBar: AppBarProducts(heiAppBar),
      body: Container(),
    );
  }
}
