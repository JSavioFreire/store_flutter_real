import 'package:flutter/material.dart';

class NameAppBar extends StatelessWidget {
  const NameAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hello Savio,',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                Text(
                  'What are you buying today?',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                )
              ],
            );
  }
}