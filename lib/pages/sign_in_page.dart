import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextField(
              controller: username,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Email",
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Password",
              ),
              obscureText: true,
            ),

            SizedBox(height: 40,),

            Center(
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width: 300,
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: (){},
                    child: Text(
                        "Forgot Password",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline
                      ),
                    ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),

                    SizedBox(width: 5,),

                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
