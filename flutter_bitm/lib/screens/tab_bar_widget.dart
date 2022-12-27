import 'package:flutter/material.dart';
import 'package:flutter_bitm/screens/customButton.dart';
import 'package:flutter_bitm/screens/first_page.dart';
import 'package:flutter_bitm/screens/home_page.dart';
import 'package:flutter_bitm/screens/second_page.dart';
import 'package:flutter_bitm/screens/textCustomWidget.dart';
import 'package:flutter_bitm/screens/user_form.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          
          elevation: 0,
          centerTitle: true,
          title: Text('Expanded Widget'),
          bottom: TabBar(tabs: [
            Tab(    
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'People',
            ),
            Tab(
              icon: Icon(Icons.share),
              text: 'Share',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Setting',
            ),
             Tab(
              icon: Icon(Icons.add_a_photo_rounded),
              text: 'Add',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            WidgetPractice(),
            SecondPage(english: 90,gender: 'girl', id: 01, maths: 79,name: 'azizul',physics: 50,),
            HomePage(),
            FirstPage(),
           CustomButton(buttonName: 'Media Soft',)

          ],
          )
      ),
    );
  }
}


