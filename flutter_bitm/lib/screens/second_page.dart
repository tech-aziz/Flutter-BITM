import 'package:flutter/material.dart';
import 'package:flutter_bitm/screens/customButton.dart';
import 'package:flutter_bitm/screens/first_page.dart';

class SecondPage extends StatefulWidget {
  String name;
  String gender;
  int id;
  int physics;
  int maths;
  int english;
  SecondPage(
      {super.key,
      required this.name,
      required this.gender,
      required this.id,
      required this.physics,
      required this.maths,
      required this.english});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Student Information length'),
      ),
      body: Column(
        children: [
          Expanded(
            
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.name.toUpperCase()),
                  Text(widget.gender.toLowerCase()),
                  Text(widget.id.toString()),
                  Text(widget.physics.toString()),
                  Text(widget.maths.toString()),
                  Text(widget.english.toString())
                ],
              ),
            ),
          ),
          Container(
              child: CustomButton(buttonName: 'Recharge Now'),
            )
        ],
      ),
    );
  }
}
