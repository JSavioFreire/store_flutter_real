import 'package:flutter/material.dart';

class BtAppBar extends StatelessWidget {
  const BtAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/cart');
      },
      // ignore: sort_child_properties_last
      child: const Icon(
        Icons.shopping_bag_outlined,
        color: Colors.black87,
        size: 28,
      ),
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(15), shape: const CircleBorder()),
    );
  }
}
