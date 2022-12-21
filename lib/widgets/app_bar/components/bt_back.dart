import 'package:flutter/material.dart';

class BtAppBarBack extends StatelessWidget {
  const BtAppBarBack({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      // ignore: sort_child_properties_last
      child: const Icon(
        Icons.arrow_back,
        color: Colors.black87,
        size: 28,
      ),
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(15), shape: const CircleBorder()),
    );
  }
}
