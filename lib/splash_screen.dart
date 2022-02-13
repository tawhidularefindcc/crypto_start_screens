import 'dart:async';

import 'package:crypto_start_screens/util/customer_button.dart';
import 'package:crypto_start_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/coin.jpeg'),
            const SizedBox(height: 30),
            Lottie.asset('assets/lottie.json'),
            const SizedBox(height: 15),
            CustomerButton(colour: Colors.blue, onpressedd: (){Get.off(()=>const WelcomeScreen());}, name: 'Enter'),
          ],
        ),
      ),
    );
  }
}