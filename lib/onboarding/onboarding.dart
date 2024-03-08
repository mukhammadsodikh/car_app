import 'package:car_app/onboarding/page_1.dart';
import 'package:car_app/onboarding/page_2.dart';
import 'package:car_app/onboarding/page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../author/login/login_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  bool onLastPge = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPge = (index == 2);
              });
            },
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),

          ////Dot indicator
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ////skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(-1);
                  },
                  child: Icon(
                      Icons.chevron_left_rounded
                  )
                ),

                SmoothPageIndicator(controller: _controller, count: 3),
                onLastPge
                    ?GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    },
                    ),
                    );
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                )

                    :GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Icon(
                    Icons.chevron_right_rounded
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
