import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

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
              Text(user.email!, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),

              SizedBox(height: 100,),

              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                  onPressed: () => {
                    FirebaseAuth.instance.signOut()
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already signed up?"),

                  SizedBox(width: 5,),

                  // TextButton(onPressed: onPressed, child: child)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
