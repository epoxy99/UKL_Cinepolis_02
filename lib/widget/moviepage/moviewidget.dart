import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200, // Tambahkan lebar
          height: 200, // Tambahkan tinggi
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/film 1.png'), // Perbaikan path
              fit: BoxFit.cover, // Gambar memenuhi container
            ),
          ),
        ),
      ],
    );
  }
}
