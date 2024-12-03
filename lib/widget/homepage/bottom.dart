import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
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
          padding: const EdgeInsets.all(13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Promotion', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
              Text('See All', style: TextStyle(fontSize:15)),
            ],
          ),
        ),
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
      ],
    );
  }
}