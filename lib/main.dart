import 'package:flutter/material.dart';
import 'package:my_todo_app/auth/auth_gate.dart';
import 'package:my_todo_app/pages/sign_in_page.dart';
import 'package:my_todo_app/pages/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      routes: {
        "signup": (context) => SignUpPage(),
        "signin": (context) => SignInPage(),
      },
    );
  }
}
