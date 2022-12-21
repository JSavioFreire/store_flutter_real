import 'package:flutter/material.dart';
import 'package:store_flutter_real/widgets/app_bar/components/bt_back.dart';

class AppBarCart extends StatelessWidget implements PreferredSizeWidget {
  final double he;
  const AppBarCart(this.he, {super.key});

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
              'My cart',
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black87,
              size: 28,
            )
          ],
        ),
      ]),
    );
  }
}
