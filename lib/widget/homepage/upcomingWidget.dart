import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Upcomingwidget extends StatefulWidget {
  const Upcomingwidget({super.key});

  @override
  State<Upcomingwidget> createState() => _UpcomingwidgetState();
}

class _UpcomingwidgetState extends State<Upcomingwidget> {
  final List<String> img = [
    'assets/images/film 1.jpeg',
    'assets/images/film 2.jpg',
    'assets/images/film 3.jpg',
    'assets/images/film 4.jpg',
    'assets/images/film 5.jpg',
    'assets/images/film 6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
              Text('See All', style: TextStyle(fontSize:15)),
            ],
          ),
        ),
        CarouselSlider(
          items: img
              .map((img) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: 200,
                  child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          img,
                          scale: 9/16,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                ),
              ))
              .toList(),
          options: CarouselOptions(
            height: 300,
            autoPlay: false,
            enableInfiniteScroll: true,
            viewportFraction: 0.5,
            scrollPhysics: CarouselScrollPhysics()
            
          ),
        ),
      ],
    );
  }
}