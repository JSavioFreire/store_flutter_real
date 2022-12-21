import 'package:flutter/material.dart';
import 'package:store_flutter_real/controllers/products_controller.dart';
import 'package:store_flutter_real/widgets/app_bar/app_bar.dart';
import 'package:store_flutter_real/widgets/carousel/carousel.dart';
import 'package:store_flutter_real/widgets/products/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final heiAppBar = MediaQuery.of(context).size.height * 0.25;
    final ProductsController controller = ProductsController();

    controller.callApi();

    return Scaffold(
      appBar: AppBarDesigner(heiAppBar),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Carousel(),
          AnimatedBuilder(
              animation: Listenable.merge([
                controller.productsController,
                controller.inLoadProducts,
                controller.productsICanSee
              ]),
              builder: ((_, __) => controller.inLoadProducts.value
                  ? const CircularProgressIndicator()
                  : Column(
                      children: [
                        for (int i = 0;
                            i < controller.productsICanSee.value;
                            i++)
                          Products(
                              controller.productsController.value[i].title
                                  .toString(),
                              controller.productsController.value[i].image
                                  .toString(),
                              controller.productsController.value[i].description
                                  .toString(),
                              controller.productsController.value[i].price
                                  .toString()),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: controller.productsICanSee.value <
                                    controller.productsController.value.length
                                ? controller.productsICanSee.value + 6 > controller.productsController.value.length ?
                                ElevatedButton(
                                    onPressed: () =>
                                        controller.productsICanSee.value += controller.productsController.value.length - controller.productsICanSee.value ,
                                    child: const Text('See more products'))
                                : ElevatedButton(
                                    onPressed: () =>
                                        controller.productsICanSee.value += 6,
                                    child: const Text('See more products'))
                                : const ElevatedButton(
                                    onPressed: null,
                                    child: Text('All products are already being seen')))
                      ],
                    ))
                    )
        ],
      )),
    );
  }
}
