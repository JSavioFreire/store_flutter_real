import 'package:flutter/material.dart';
import 'package:store_flutter_real/pages/home_page.dart';
import 'package:store_flutter_real/theme/theme.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Store',
        initialRoute: '/home',
        routes: {'/home': (context) => HomePage()});
  }
}
