import 'package:flutter/material.dart';

import 'onboarding.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/page1.png',
                    height: 400,
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Lorem Ipsum doer ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Lorem Ipsum is simply dummy "
                      "text of the printing and "
                      "typesetting industry. Lorempsum"
                      " has been the industry's standard "
                      "dummy text ever since the 1500s",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontFamily: 'Montserrat',
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 322,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFFE7117),
                        Color(0xFFFF3022),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnboardingScreen()));
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.none,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}