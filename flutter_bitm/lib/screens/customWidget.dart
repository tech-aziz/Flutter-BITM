import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomWidget extends StatelessWidget {
  String title;
  String subTitle;
  int age;
  String? image;
  CustomWidget(
      {required this.title,
      required this.subTitle,
      required this.age,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 2, color: Colors.black26)),
      child: ListTile(
        hoverColor: Colors.red,
        leading: CircleAvatar(),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Text(age.toString()),
      ),
    );
  }
}
