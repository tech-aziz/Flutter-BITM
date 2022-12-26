import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String buttonName;
  CustomButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
