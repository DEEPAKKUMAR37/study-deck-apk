import 'package:flutter/material.dart';

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
          Center(
            child: Container(
              height: 400,
              width: 350,
              color: Colors.white.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }
}
