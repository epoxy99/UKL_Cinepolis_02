import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:movie_application/widget/bottomnav.dart';
import 'package:movie_application/widget/cinemapage/lokasiCinema.dart';
import 'package:movie_application/widget/moviepage/moviewidget.dart';

class Cinemapage extends StatefulWidget {
  const Cinemapage({super.key});

  @override
  _CinemapageState createState() => _CinemapageState();
}

class _CinemapageState extends State<Cinemapage> {
  String? _selectedValue; // Variabel untuk menyimpan nilai yang dipilih

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: DropdownButton<String>(
                value: _selectedValue,
                icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.black),
                underline: SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
                items: <String>['Jakarta', 'Malang', 'Surabaya']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      children: [
                        Icon(Icons.location_on, size: 20, color: Colors.black),
                        SizedBox(width: 8),
                        Text(value),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(width: 10),
            Text('Cinemapage', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 10),
            child: SizedBox(
              width: 370,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, size: 30),
                  prefixIconColor: Colors.grey,
                  hintText: "Cinema / Movie",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.only(left: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), 
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.grey), 
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.blue.withOpacity(0.3), // Warna border
                      width: 2.0, // Ketebalan border
                    ),
                  ),
                ),
                child: ElevatedButton(onPressed:() {
                   Navigator.pushReplacementNamed(context, '/movie');
                }, child:Text('Movie'),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue.withOpacity(0.3),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Container(
                width: 180,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.blue, // Warna border
                      width: 2.0, // Ketebalan border
                    ),
                  ),
                ),
                child: ElevatedButton(onPressed:() {
                   Navigator.pushReplacementNamed(context, '/cinema');
                }, child:Text('Cinema'),
                style: ElevatedButton.styleFrom(
                  
                  elevation: 0,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                  ),
                ),
              ),
            ],
          ),
       cinemaWidget(),
       cinemaWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavbar(page: 3),
    );
  }
}
