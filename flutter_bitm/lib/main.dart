import 'package:flutter/material.dart';
import 'package:flutter_bitm/screens/customWidget.dart';
import 'package:flutter_bitm/screens/expanded_widget.dart';
import 'package:flutter_bitm/screens/home_page.dart';
import 'package:flutter_bitm/screens/user_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpandedWidget()
    );
    },);
  }
}

