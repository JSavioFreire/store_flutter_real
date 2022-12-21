import 'package:flutter/material.dart';
import 'package:store_flutter_real/widgets/app_bar/components/bt_app_bar.dart';
import 'package:store_flutter_real/widgets/app_bar/components/categories_app_bar.dart';
import 'package:store_flutter_real/widgets/app_bar/components/name_app_bar.dart';
import 'package:store_flutter_real/widgets/app_bar/components/search_app_bar.dart';

class AppBarDesigner extends StatelessWidget implements PreferredSizeWidget {
  final double he;
  const AppBarDesigner(this.he, {super.key});

  @override
  Size get preferredSize => Size.fromHeight(he);
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            NameAppBar(),
            BtAppBar(),
          ],
        ),
        const SearchAppBar(),
        const CategoriesAppBar()
      ]),
    );
  }
}
