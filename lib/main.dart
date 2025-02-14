import 'package:final_project/app/bottom_navigation_screen.dart';
import 'package:final_project/app/home_screen.dart';
import 'package:final_project/login/launch_screen.dart';
import 'package:final_project/login/login_screen.dart';
import 'package:final_project/login/sign_in_screen.dart';
import 'package:final_project/onbording/on_bording_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/on_boarding_screen': (context) => const OnBordingScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/signIn_screen': (context) => const SignInScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/bottom_navigation_screen': (context) => BottomNavigationScreen(),
      },
    );
  }
}
