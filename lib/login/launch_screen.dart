import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/on_boarding_screen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEC54B),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'images/logo.png',
              height: 197,
              width: 131,
            ),
            SizedBox(
              height: 38,
            ),
            Text(
              'Fresh Fruits',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 127,
            )
          ],
        ),
      ),
    );
  }
}
