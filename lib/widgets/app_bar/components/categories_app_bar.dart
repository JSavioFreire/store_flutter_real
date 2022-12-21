import 'package:flutter/material.dart';
import '../../../controllers/category_controller.dart';

class CategoriesAppBar extends StatelessWidget {
  const CategoriesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = CategoryController();
    controller.callApi();

    return AnimatedBuilder(
        animation: Listenable.merge([
          controller.categorysApi,
          controller.inLoadCategory,
          controller.whatCategory
        ]),
        builder: ((_, __) => controller.inLoadCategory.value
            ? const LinearProgressIndicator()
            : SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.categorysApi.value.length,
                    itemBuilder: (_, idx) {
                      return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: controller.whatCategory.value ==
                                  controller.categorysApi.value[idx]
                              ? OutlinedButton(
                                  onPressed: () {
                                    controller.whatCategory.value =
                                        controller.categorysApi.value[idx];
                                  },
                                  style: OutlinedButton.styleFrom(
                                      shape: const StadiumBorder(),
                                      backgroundColor: Colors.blue),
                                  child: Row(
                                    children: [
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'electronics')
                                        const Icon(Icons.phone_android,
                                            color: Colors.white),
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'jewelery')
                                        const Icon(Icons.diamond_outlined,
                                            color: Colors.white),
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'men\'s clothing')
                                        const Icon(Icons.man_rounded,
                                            color: Colors.white),
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'women\'s clothing')
                                        const Icon(Icons.woman_rounded,
                                            color: Colors.white),
                                      Text(
                                        controller.categorysApi.value[idx],
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )
                                    ],
                                  ))
                              : OutlinedButton(
                                  onPressed: () {
                                    controller.whatCategory.value =
                                        controller.categorysApi.value[idx];
                                  },
                                  style: OutlinedButton.styleFrom(
                                      shape: const StadiumBorder()),
                                  child: Row(
                                    children: [
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'electronics')
                                        const Icon(Icons.phone_android,
                                            color: Colors.black54),
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'jewelery')
                                        const Icon(Icons.diamond_outlined,
                                            color: Colors.black54),
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'men\'s clothing')
                                        const Icon(Icons.man_rounded,
                                            color: Colors.black54),
                                      if (controller
                                              .categorysApi.value[idx] ==
                                          'women\'s clothing')
                                        const Icon(Icons.woman_rounded,
                                            color: Colors.black54),
                                      Text(
                                        controller.categorysApi.value[idx],
                                        style: const TextStyle(
                                            color: Colors.black54),
                                      )
                                    ],
                                  )));
                    }),
              )));
  }
}
