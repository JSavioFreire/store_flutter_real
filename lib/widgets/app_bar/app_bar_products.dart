import 'package:flutter/material.dart';
import 'package:store_flutter_real/widgets/app_bar/components/bt_app_bar.dart';
import 'package:store_flutter_real/widgets/app_bar/components/bt_back.dart';

class AppBarProducts extends StatelessWidget implements PreferredSizeWidget {
  final double he;
  const AppBarProducts(this.he, {super.key});

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
            BtAppBarBack(),
            Text(
              'Product details',
              style: TextStyle(fontSize: 20),
            ),
            BtAppBar(),
          ],
        ),
      ]),
    );
  }
}
