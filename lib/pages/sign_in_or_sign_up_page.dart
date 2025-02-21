import 'package:flutter/material.dart';
import 'package:my_todo_app/pages/sign_in_page.dart';
import 'package:my_todo_app/pages/sign_up_page.dart';

class SignInOrSignUpPage extends StatefulWidget {
  const SignInOrSignUpPage({super.key});

  @override
  State<SignInOrSignUpPage> createState() => _SignInOrSignUpPageState();
}

class _SignInOrSignUpPageState extends State<SignInOrSignUpPage> {

  //boolean to display sign in page
  bool showSignIn = true;

  //function to toggle between pages
  void toggle(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }


  @override
  Widget build(BuildContext context) {

    if (showSignIn){
      return SignInPage(
        onTap: toggle,
      );
    }
    else{
      return SignUpPage(
        onTap: toggle,
      );
    }

  }
}
