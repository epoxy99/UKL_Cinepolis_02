import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Upperhome extends StatefulWidget {
  const Upperhome({super.key});

  @override
  State<Upperhome> createState() => _UpperhomeState();
}

class _UpperhomeState extends State<Upperhome> {
  final List<String> imgs = [
    'assets/images/film 7.jpg',
    'assets/images/film 8.jpg',
    'assets/images/film 9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    'Guest',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Kamu mau nonton apa hari ini?',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        CarouselSlider(
          items: imgs
              .map((img) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
              ))
              .toList(),
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Now Showing', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
              Text('See All', style: TextStyle(fontSize:15)),
            ],
          ),
        ),
        
      ],
    );
  }
}
