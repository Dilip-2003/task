import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  MyNavBar({super.key});

  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      selectedItemColor: Color(0xff00B73E).withOpacity(0.8),
      unselectedItemColor: const Color(0xFF505050).withOpacity(.8),
      items: const [
        BottomNavigationBarItem(
          label: 'Search Menu',
          icon: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Icon(
              Icons.manage_search_rounded,
              size: 30,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Favourite',
          icon: Icon(Icons.favorite_border_outlined, size: 30),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home, size: 30),
        ),
        BottomNavigationBarItem(
          label: 'Cart',
          icon: Icon(Icons.shopping_cart, size: 30),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person_2_outlined, size: 30),
        ),
      ],
    );
  }
}
