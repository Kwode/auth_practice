import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WELCOME TO MY APP!", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),

              SizedBox(height: 100,),

              Center(
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(context, "signup")
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Get Started",
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
