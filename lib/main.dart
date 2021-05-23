import 'package:coffee_to_go/screens/landingPage.dart';
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
      initialRoute: LandingPage.id,
      routes: {
        '/': (context) => LandingPage(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
      },
    );
  }
}
