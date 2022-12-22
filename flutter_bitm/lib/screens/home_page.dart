import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_bitm/screens/customWidget.dart';
import 'package:flutter_bitm/screens/first_page.dart';
import 'package:matcher/matcher.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var dateFormate = DateFormat("dd-MM-yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  dateFormate.toString(),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Calling Custom widgets.
              CustomWidget(
                  age: 22,
                  title: 'App Developer',
                  subTitle: 'Media Soft Data System Ltd'),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                title: 'Web Developer',
                subTitle: 'Upwork',
                age: 32,
              ),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                  age: 22,
                  title: 'App Developer',
                  subTitle: 'Media Soft Data System Ltd'),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                title: 'Web Developer',
                subTitle: 'Upwork',
                age: 32,
              ),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                  age: 22,
                  title: 'App Developer',
                  subTitle: 'Media Soft Data System Ltd'),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                title: 'Web Developer',
                subTitle: 'Upwork',
                age: 32,
              ),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                  age: 22,
                  title: 'App Developer',
                  subTitle: 'Media Soft Data System Ltd'),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                title: 'Web Developer',
                subTitle: 'Upwork',
                age: 32,
              ),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                  age: 22,
                  title: 'App Developer',
                  subTitle: 'Media Soft Data System Ltd'),
              SizedBox(
                height: 10,
              ),
              CustomWidget(
                title: 'Web Developer',
                subTitle: 'Upwork',
                age: 32,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text(
                    'Go',
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
