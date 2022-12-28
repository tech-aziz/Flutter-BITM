import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_bitm/screens/customWidget.dart';
import 'package:flutter_bitm/screens/first_page.dart';
import 'package:flutter_bitm/screens/user_form.dart';
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
      appBar: customAppBar(
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WidgetPractice()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.lightBlueAccent,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.more_vert,
              color: Colors.lightBlueAccent,
            ),
          )),
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
              SizedBox(
                height: 10,
              ),
              reuseableContainer(),

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

  AppBar customAppBar(Widget backIcon, Widget actionIcon) {
    return AppBar(
      elevation: 10,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: backIcon,
      title: Text(
        'Title',
        style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 20,
            fontWeight: FontWeight.normal),
      ),
      actions: [actionIcon],
    );
  }

  Widget reuseableContainer() {
    return Container(
      height: 100,
      width: 200,
      child: Center(
        child: Text('Custom Widget'),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2, color: Colors.green)),
    );
  }
}
