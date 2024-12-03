import 'package:flutter/material.dart';
import 'package:movie_application/view/loginpage.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Loginpage(), 
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 25, 69, 0.965),
      body:Container(
        color: Color.fromARGB(255, 22, 22, 111),
        child: Center(
          child: Image.asset('assets/images/logofix.png'),
        ),
      )     
      );
  }
}