import 'package:coffee_to_go/screens/home_screen.dart';
import 'package:coffee_to_go/screens/signIn.dart';
import 'package:flutter/material.dart';

import 'screens/signUp.dart';

void main() => runApp(CoffeeToGo());

class CoffeeToGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffee-To-Go",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        '/': (context) => HomeScreen(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
      },
    );
  }
}
