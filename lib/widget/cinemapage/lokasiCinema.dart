import 'package:flutter/material.dart';

class cinemaWidget extends StatelessWidget {
  const cinemaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10,left: 10, right: 10),
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(255, 236, 236, 236)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 10,
                          color: Colors.grey.withOpacity(0.7)),
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Text("Malang Town Square",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 5,),
                            Text('9.0 Km away')
                          ],
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Icon(Icons.local_movies_rounded),
                            SizedBox(width: 5,),
                            Text('REGULER LUXE'),
                          ],
                        ),
                      ],
                    ),
                  ),
        )
      ],
    );
  }
}