import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  final Function()? onTap;
  const SignUpPage({super.key, required this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final username = TextEditingController();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  void signUp() async{
    //show loading circle
    showDialog(
        context: context,
        builder: (context){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
    );

    //sign up
    try {
      //check if passwords match
      if(password.text == confirmPassword.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email.text,
            password: password.text
        );
      }

      else
      {
        print("Passwords don't match");
      }

      //remove loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //remove loading circle
      Navigator.pop(context);
      if(e.code == "user-not-found"){
        print("Wrong Email");
      }
      else if(e.code == "wrong-password"){
        print("Wrong Password");
      }
    }
  }

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
                controller: name,
                decoration: InputDecoration(
                  hintText: "Enter Full Name",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),

              SizedBox(height: 20,),

              TextField(
                controller: confirmPassword,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder()
                ),
                obscureText: true,
              ),

              SizedBox(height: 40,),

              Center(
                child: GestureDetector(
                  onTap: signUp,
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

                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
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
