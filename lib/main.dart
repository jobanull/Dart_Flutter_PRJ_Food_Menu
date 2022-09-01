import 'package:flutter/material.dart';
import 'package:food_menus_application/views/category_detail_item.dart';
import 'package:food_menus_application/views/recipe.dart';

import 'views/category_menus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/detail_category': (context) => DetailCategory(),
        '/recipe': (context) => Recipe(),
      },
      initialRoute: '/',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Joban Restaurant | Menus",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CategoryScreen(),
    );
  }
}
