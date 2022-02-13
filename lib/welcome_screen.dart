import 'package:crypto_start_screens/list_coin.dart';
import 'package:crypto_start_screens/trading_account.dart';
import 'package:crypto_start_screens/util/customer_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('Welcome to our crypto app', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/coin.jpeg'),
            const SizedBox(height: 30),
            CustomerButton(colour: Colors.blue, onpressedd: (){Get.off(()=>const TradingAccount());}, name: 'Click here to open a trading account'),
            const SizedBox(height: 15),
            CustomerButton(colour: Colors.blue, onpressedd: (){Get.off(()=>const ListCoin());}, name: 'Click here to list your coin or token'),
          ],
        ),
      ),
    );
  }
}