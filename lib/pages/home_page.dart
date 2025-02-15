import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME TO MY APP!", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            Row(
              children: [
                GestureDetector(
                    onTap: (){},
                    child: Container()
                ),
                GestureDetector(
                    onTap: (){},
                    child: Container()
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
