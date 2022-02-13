import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerButton extends StatelessWidget {
  const CustomerButton(
      {Key? key, required this.colour, required this.onpressedd, required this.name, required this.textStyle}) : super(key: key);
  final Color colour;
  final Function onpressedd;
  final String name;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onpressedd();
          },
          minWidth: Get.width * 0.8,
          height: Get.height * 0.09,
          child: Text(
            name,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}