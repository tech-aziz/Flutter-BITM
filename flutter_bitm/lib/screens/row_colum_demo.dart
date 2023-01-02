import 'package:flutter/material.dart';
import 'package:flutter_bitm/screens/list_listTyle.dart';
import 'package:intl/intl.dart';

class RowColumWidget extends StatefulWidget {
  const RowColumWidget({super.key});

  @override
  State<RowColumWidget> createState() => _RowColumWidgetState();
}

class _RowColumWidgetState extends State<RowColumWidget> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat().add_jm().format(now);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${sum(12, 10)}'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 22),
            child: Text(
              formattedDate,
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(parent: ScrollPhysics()),
          child: Column(
            
            children: [
              buttonWidget(Text('Play'), Color(0xff00FF00),
                  Border.all(color: Colors.green, width: 2)),
              SizedBox(
                height: 5,
              ),
              buttonWidget(Text('Pause'), Color.fromARGB(255, 0, 17, 255),
                  Border.all(color: Color.fromARGB(255, 157, 68, 0), width: 2)),
              SizedBox(
                height: 5,
              ),
              buttonWidget(
                  Text('Stop'),
                  Color(0xff00FF00),
                  Border.all(
                      color: Color.fromARGB(255, 147, 76, 175), width: 2)),
              SizedBox(
                height: 5,
              ),
              buttonWidget(Text('Resume'), Color(0xff00FF00),
                  Border.all(color: Color.fromARGB(255, 60, 53, 63), width: 2)),
              SizedBox(
                height: 5,
              ),
              buttonWidget(
                  Text('Resume'),
                  Color(0xff00FF00),
                  Border.all(
                      color: Color.fromARGB(255, 179, 0, 255), width: 2)),
              SizedBox(
                height: 5,
              ),
              buttonWidget(Text('Resume'), Color(0xff00FF00),
                  Border.all(color: Color.fromARGB(255, 53, 53, 63), width: 2)),
              SizedBox(
                height: 5,
              ),
              buttonWidget(Text('Resume'), Color(0xff00FF00),
                  Border.all(color: Color.fromARGB(255, 53, 63, 61), width: 2),),
                  //Example of list and listTile
                  // ListListTile()
            ],
          ),
        ),
      ),
    );
  }
}

int sum(int a, int b) {
  return a + b;
}

Widget buttonWidget(
  Text buttonName,
  Color ? backgrounColor,
  Border buttonBorder,
) {
  return InkWell(
    hoverColor: Colors.amber,
    onTap: () {},
    child: Container(
      alignment: Alignment.center,
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: backgrounColor,
          border: buttonBorder, borderRadius: BorderRadius.circular(15)),
      child: buttonName,
    ),
  );
}
