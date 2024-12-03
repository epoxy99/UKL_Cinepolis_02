import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carouselwidget extends StatefulWidget {
  const Carouselwidget({super.key});

  @override
  State<Carouselwidget> createState() => _CarouselwidgetState();
}

class _CarouselwidgetState extends State<Carouselwidget> {
  int _currentIndex = 0;

  final List<String> imgList = [
    'assets/images/film 1.jpeg',
    'assets/images/film 2.jpg',
    'assets/images/film 3.jpg',
    'assets/images/film 4.jpg',
    'assets/images/film 5.jpg',
    'assets/images/film 6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index, realIdx) {
        bool isCenter = index == _currentIndex;

        return Stack(
          alignment: Alignment.center,
          children: [
            // Layer blur untuk elemen non-tengah
            if (!isCenter)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(imgList[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
            // Gambar utama tanpa blur
            if (isCenter)
              Container(
                width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgList[index]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
      options: CarouselOptions(
        initialPage: 0,
        height: 200,
        enlargeCenterPage: true,
        viewportFraction: 0.4,
        enableInfiniteScroll: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
