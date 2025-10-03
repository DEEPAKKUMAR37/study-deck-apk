import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class StudentRegistrationScreen extends StatelessWidget {
  const StudentRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/Images/background.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white.withOpacity(0.3),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Container(
                child: Image.asset('assets/Images/logo.png',
                  height: 60,
                  width: 60,
                ),
              ),
            ),

            Center(
              child: Container(
                height: 530,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Text('Registration',
                        style: GoogleFonts.domine(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "S'Name*",
                            hintText: "Enter Student Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "SID*",
                            hintText: "Enter Student ID",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Branch*",
                            hintText: "Enter Your Branch",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Email*",
                            hintText: "Enter Your Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password*",
                            hintText: "Enter Your Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal
                        ),
                        child: Text("Registration",
                          style: TextStyle(color: Colors.white),
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
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.black54
                          )
                        ]
                    ),
                  ),
                )
            ),

          ],
        )
    );
  }
}
