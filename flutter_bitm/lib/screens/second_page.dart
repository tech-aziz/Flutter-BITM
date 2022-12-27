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
        leading: Icon(Icons.share),
        title: Text('PreferredSize'),
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(
                  Icons.menu,
                  color: Colors.black54,
                ),
                title: Text('Media Soft'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              child: Column(
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
            SizedBox(height: 10,),
            Container(
              child: InkWell(
                onTap: () {
                  print('Button is click');
                },
                child: CustomButton(buttonName: 'Recharge Now')),
            )
          ],
        ),
      ),
    );
  }
}
