import 'package:final_project/login/login_screen.dart';
import 'package:final_project/login/sign_in_screen.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/onBoardingView.png',
            height: 179,
            width: 303,
          ),
          const SizedBox(height: 130),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text(
                  'Fast and responsibily delivery by our courir',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 14),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                  style: TextStyle(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 71,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(319, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Color(0xFF000000)),
                  child: Text(
                    'CREATE AN ACCOUNT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignInScreen()));

                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Color(0xFF000000)),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(319, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.black, width: 2)),
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
