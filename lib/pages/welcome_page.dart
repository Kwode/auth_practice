import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/pfp.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      //design for the welcome page
      body: Column(
        children: [
          SizedBox(height: 20,),

          //pictures at the top
          Expanded(
              child: Pfp()
          ),

          //text
          Expanded(
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Where Connection Fuels Success.",
                  style: GoogleFonts.tiroTamil(
                    color: Colors.white,
                    fontSize: 39,
                  ),
                ),

                SizedBox(height: 60,),

                //get started button
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                  ),
                ),

                SizedBox(height: 8,),

                //key to login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(width: 5,),

                    //sign in text
                    GestureDetector(
                      onTap: (){},
                        child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.blue[500],
                              ),
                        ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
