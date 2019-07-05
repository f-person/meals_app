import 'package:flutter/material.dart';

import './categories_screen.dart';

void main() {
  runApp(MealsApp());
}

class MealsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CategoriesScreen(),
    );
  }
}
