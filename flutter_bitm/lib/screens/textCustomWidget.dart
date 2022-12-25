import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String name;
  TextWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        //  border: Border.all(color: Colors.blueAccent),
        color: Colors.orange,
        border: Border.all(color: Colors.green, width: 2.0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Text(name,style: TextStyle(color: Colors.white),)),
    );
  }
}
