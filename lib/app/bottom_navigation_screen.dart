import 'package:final_project/app/cart_screen.dart';
import 'package:final_project/app/category_screen.dart';
import 'package:final_project/app/favorites_screen.dart';
import 'package:final_project/app/home_screen.dart';
import 'package:final_project/app/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          child: BottomNavigationBar(
            elevation: 5,
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            iconSize: 30,
            selectedItemColor: Color(0xFFE67F1E),
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
