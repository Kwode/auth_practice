import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:flutter/material.dart';
import 'package:my_todo_app/pages/home_page.dart';
import '../pages/sign_in_or_sign_up_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){

          //if user is logged in
          if (snapshot.hasData){
            return HomePage();
          }

          //if user is not logged in
          else{
            return SignInOrSignUpPage();
          }
        },
    );
  }
}
