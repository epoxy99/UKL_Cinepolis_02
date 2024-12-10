import 'package:flutter/material.dart';
import 'package:movie_application/widget/bottomnav.dart';

class Bookingpage extends StatefulWidget {
  const Bookingpage({super.key});

  @override
  State<Bookingpage> createState() => _BookingpageState();
}

class _BookingpageState extends State<Bookingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text(
          'My Booking',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.timer_sharp,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text("There's no booking!"),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 236, 236, 236)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 10,
                          color: Colors.grey.withOpacity(0.7)),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/moana.png',
                        width: 200,
                        height: 300,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Moana",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Row(
                            children: [
                         
                          Text('R13+',
                              style: TextStyle(backgroundColor: Colors.grey)), SizedBox(width: 5,),Text('Petualangan'),
                        ]),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Icon(Icons.star_half,
                                  color: Colors.orange, size: 20),
                              Text('4.5')
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
          Stack(
            children: [
              Container(
                  margin:const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 236, 236, 236)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 10,
                          color: Colors.grey.withOpacity(0.7)),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/avatar.jpg',
                        width: 200,
                        height: 300,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Avatar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),Row(
                            children: [
                         
                          Text('D17+',
                              style: TextStyle(backgroundColor: Colors.grey)),SizedBox(width: 5,), Text('Action'),
                        ]),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Icon(Icons.star_half,color:Colors.orange, size: 20),
                            
                              Text('5.0')
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavbar(page: 1),
    );
  }
}
