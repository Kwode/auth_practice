import 'package:flutter/material.dart';
import 'package:my_todo_app/pages/sign_in_page.dart';
import 'package:my_todo_app/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
      routes: {
        "./signup": (context) => SignUpPage(),
        "./signin": (context) => SignInPage(),
      },
    );
  }
}
