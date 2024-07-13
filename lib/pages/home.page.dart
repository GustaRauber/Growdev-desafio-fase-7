import 'package:flutter/material.dart';

import 'sub_pages/fifth.page.dart';
import 'sub_pages/fourth.page.dart';
import 'sub_pages/google_maps.page.dart';
import 'sub_pages/second.page.dart';
import 'sub_pages/third.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const [
        GoogleMapsPage(),
        SecondPage(),
        ThirdPage(),
        FourthPage(),
        FifthPage(),
      ][currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: const Color(0xFF8bb3f8),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Explorar",
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: "Ir",
            icon: Icon(Icons.commute),
          ),
          BottomNavigationBarItem(
            label: "Salvo",
            icon: Icon(Icons.bookmark_border),
          ),
          BottomNavigationBarItem(
            label: "Contribuir",
            icon: Icon(Icons.add_circle_outline),
          ),
          BottomNavigationBarItem(
            label: "Novidades",
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
    );
  }
}
