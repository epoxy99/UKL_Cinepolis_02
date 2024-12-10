import 'package:flutter/material.dart';
import 'package:movie_application/widget/bottomnav.dart';
import 'package:movie_application/widget/homepage/bottom.dart';
import 'package:movie_application/widget/homepage/carouselWidget.dart';
import 'package:movie_application/widget/homepage/upcomingWidget.dart';
import 'package:movie_application/widget/homepage/upperHome.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      'Malang',
                      style: TextStyle(fontSize: 15),
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                )),
            const Row(
              children: [
                Icon(Icons.favorite_border,size: 35,),
                Icon(Icons.notifications,size: 35,),
                Icon(Icons.person,size: 35,)
              ],
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Upperhome(),
            Carouselwidget(),
            Upcomingwidget(),
            Bottom()
            ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(page: 0),
    );
  }
}
