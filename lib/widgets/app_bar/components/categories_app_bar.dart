import 'package:flutter/material.dart';
import '../../../controllers/category_controller.dart';

class CategoriesAppBar extends StatelessWidget {
  const CategoriesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = CategoryController();
    controller.callApi();

    return AnimatedBuilder(
        animation: Listenable.merge(
            [controller.categorysApi, controller.inLoadCategory]),
        builder: ((_, __) => controller.inLoadCategory.value
            ? const LinearProgressIndicator()
            : SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.categorysApi.value.length,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                shape: const StadiumBorder()),
                            child: Row(
                              children: [
                                if (controller.categorysApi.value[index] ==
                                    'electronics')
                                  const Icon(Icons.phone_android,
                                      color: Colors.black54),
                                if (controller.categorysApi.value[index] ==
                                    'jewelery')
                                  const Icon(Icons.diamond_outlined,
                                      color: Colors.black54),
                                if (controller.categorysApi.value[index] ==
                                    'men\'s clothing')
                                  const Icon(Icons.man_rounded,
                                      color: Colors.black54),
                                if (controller.categorysApi.value[index] ==
                                    'women\'s clothing')
                                  const Icon(Icons.woman_rounded,
                                      color: Colors.black54),
                                Text(
                                  controller.categorysApi.value[index],
                                  style: const TextStyle(color: Colors.black54),
                                ),
                              ],
                            )),
                      );
                    }),
              )));
  }
}
