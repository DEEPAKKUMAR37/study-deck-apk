import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/background.jpg',
          fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withOpacity(0.3),
          ),
          Positioned(
            right: 20,
              top: 50,
              child: Container(
            height: 60,
            width: 60,
            child: Image.asset('assets/images/logo.png'),
            )
          ),
          Center(
            child: Container(
              height: 400,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25)
              ),
              
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Reset Password',
                  style: GoogleFonts.domine(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Student ID',
                        hintText: 'Enter Your SID',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius : BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.teal, width: 2), // focus border teal
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.teal, width: 2), // focus border teal
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal
                      ),
                      child: Text('Confirm',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      )
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: Text("BKBIET PILANI",
                    style: GoogleFonts.domine(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(1, 1),
                          blurRadius: 3
                        )
                      ]
                    )
                ),
              )
          )

        ],
      ),
    );
  }
}
