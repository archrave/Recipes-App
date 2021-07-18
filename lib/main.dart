import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Recipes',
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.yellow,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  color: Color.fromRGBO(20, 51, 51, 1)),
              body2:
                  TextStyle(fontSize: 10, color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'))),
      home: CategoriesScreen(),
      routes: {
        //    '/meals-screen': (ctx) => MealsScreen(),
        // Better way is to store this random name in the given widget class itself

        MealsScreen.routeName: (ctx) => MealsScreen(),
      },
    );
  }
}
