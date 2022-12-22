import 'dart:math';
import 'package:flutter/material.dart';
import 'package:store_flutter_real/controllers/category_controller.dart';
import 'package:store_flutter_real/controllers/products_controller.dart';
import 'package:store_flutter_real/widgets/app_bar/app_bar.dart';
import 'package:store_flutter_real/widgets/carousel_home_page/carousel.dart';
import 'package:store_flutter_real/widgets/products_home_page/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final heiAppBar = MediaQuery.of(context).size.height * 0.25;
    final ProductsController controller = ProductsController();
    final CategoryController controllerCategory = CategoryController();

    controller.callApi();

    return Scaffold(
      appBar: AppBarDesigner(heiAppBar),
      body: SingleChildScrollView(
          child: Column(
        children: [
          AnimatedBuilder(
              animation: Listenable.merge([
                controller.productsController,
                controller.inLoadProducts,
                controller.productsICanSee,
                controllerCategory.whatCategory
              ]),
              builder: ((_, __) => controller.inLoadProducts.value
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        Carousel(
                            controller.productsController
                                .value[Random().nextInt(20)].image
                                .toString(),
                            controller.productsController
                                .value[Random().nextInt(20)].image
                                .toString(),
                            controller.productsController
                                .value[Random().nextInt(20)].image
                                .toString()),
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
                                  .toString(),
                              controller.productsController.value[i].category
                                  .toString()),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: controller.productsICanSee.value <
                                    controller.productsController.value.length
                                ? controller.productsICanSee.value + 6 >
                                        controller
                                            .productsController.value.length
                                    ? ElevatedButton(
                                        onPressed: () => controller
                                            .productsICanSee.value += controller
                                                .productsController
                                                .value
                                                .length -
                                            controller.productsICanSee.value,
                                        child: const Text('See more products'))
                                    : ElevatedButton(
                                        onPressed: () => controller
                                            .productsICanSee.value += 6,
                                        child: const Text('See more products'))
                                : const ElevatedButton(
                                    onPressed: null,
                                    child:
                                        Text('All products are already being seen')))
                      ],
                    )))
        ],
      )),
    );
  }
}
