import 'package:flutter/material.dart';
import 'student_registration_screen.dart';
import 'splash_screen.dart'; // Import splash screen
import 'login_screen.dart';
import 'reset_password.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Study Cloud',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      /*routes: {
        '/home': (context) => MyHomePage(),
        '/SplashScreen': (context) => SplashScreen(),
        '/LoginScreen': (context) => LoginScreen(),
        '/StudentRegistrationScreen' : (context) => StudentRegistrationScreen(),
        '/ResetPassword' : (context) => ResetPassword(),
      },*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: const Center(
        child: Text(
          'This is Home Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
