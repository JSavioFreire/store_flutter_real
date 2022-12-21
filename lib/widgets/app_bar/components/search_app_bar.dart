import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search products',
            hintStyle: TextStyle(color: Colors.black38),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black38,
            ),
          ),
        ));
  }
}
