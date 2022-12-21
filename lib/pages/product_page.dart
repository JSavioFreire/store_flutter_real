import 'package:flutter/material.dart';
import 'package:store_flutter_real/widgets/bt_add_cart/bt_add_cart.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.network(arg['image'], width: 250),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    arg['title'],
                    style: const TextStyle(fontSize: 25),
                  )),
              Text(
                arg['description'],
                style: const TextStyle(color: Colors.black54),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BtAddCart(),
                    Text(
                      'R\$ ${arg['price']}',
                      style: const TextStyle(fontSize: 25, color: Colors.green),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
