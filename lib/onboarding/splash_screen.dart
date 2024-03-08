import 'dart:async';
import 'package:flutter/material.dart';

import 'get_started.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  get builder => const GetStarted();
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), (){
      debugPrint('3 seconds completed');
      Navigator.push(context, MaterialPageRoute(
          builder: (context) =>  const GetStarted() ));
    });
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo.png'),
            fit: BoxFit.cover,
          ),
        ),
    )
      );
  }
}