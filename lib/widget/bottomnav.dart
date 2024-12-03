import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({required this.page});
  final int page;

  @override
  State<BottomNavbar> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavbar> {
  void getpage(int index) {
    if (index == widget.page)
      return; // Mencegah navigasi ulang jika berada di halaman yang sama
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/booking');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/movie');  
        break;
      case 3:
      Navigator.pushReplacementNamed(context, '/cinema');  
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color.fromRGBO(1, 25, 69, 0.965),
      unselectedItemColor: Colors.grey,
      currentIndex: widget.page,
      onTap: getpage,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded,size: 40,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.confirmation_number_sharp,size: 40,),label: 'My Booking'),
        BottomNavigationBarItem(icon: Icon(Icons.local_movies_sharp,size: 40,),label: 'Movie'),
        BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined,size: 40,),label: 'Cinema'),

      ],
      showUnselectedLabels: true,
      showSelectedLabels: true,
     
    );
  }
}
