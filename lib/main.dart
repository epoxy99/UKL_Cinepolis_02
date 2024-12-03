import 'package:flutter/material.dart';
import 'package:movie_application/view/bookingpage.dart';
import 'package:movie_application/view/cinemapage.dart';
import 'package:movie_application/view/homepage.dart';
import 'package:movie_application/view/loginpage.dart';
import 'package:movie_application/view/moviepage.dart';
import 'package:movie_application/view/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,

      
initialRoute: '/splash',
      routes: {
        '/splash': (context) =>  const Splashpage(),
        '/login': (context) => const Loginpage(),
        '/home': (context) =>  const Homepage(),
        '/booking':(context) => const Bookingpage(),
        '/movie': (context) => const Moviepage(),
        '/cinema': (context) => const Cinemapage(),
        } 
           );
  }
}

