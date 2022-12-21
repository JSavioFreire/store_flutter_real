import 'package:flutter/material.dart';

import 'package:store_flutter_real/widgets/app_bar/app_bar_cart.dart';

class CartPage extends StatelessWidget {
  
  const CartPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    final heiAppBar = MediaQuery.of(context).size.height * 0.1;

    return Scaffold(
      appBar: AppBarCart(heiAppBar),

    );
  }
}