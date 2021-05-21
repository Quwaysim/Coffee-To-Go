import 'package:coffee_to_go/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(CoffeeToGo());

class CoffeeToGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
