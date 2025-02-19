import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: ListView(
            children: [
              Text(
                "Sign Up",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30,),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Full Name",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),

              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder()
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
                          "Sign Up",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already signed up?"),

                  SizedBox(width: 5,),

                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
