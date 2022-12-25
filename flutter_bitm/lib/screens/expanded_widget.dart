import 'package:flutter/material.dart';
import 'package:flutter_bitm/screens/textCustomWidget.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  final List<Widget> fruits = [
    Text('Banana'),
    Text('Apple'),
    Text('JackFruit')
  ];
  final List vegetables = [Text('Gajor'), Text('Tommato'), Text('Capcicum')];
  final List icons = [
    Icon(Icons.home),
    Icon(Icons.share),
    Icon(Icons.search),
  ];
  final List<bool> _selectedFruits = <bool>[true, false, true];
  //All Veriables
  bool switchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Expanded Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          width: double.infinity,
                          child: Center(
                            child: ToggleButtons(
                              fillColor: Colors.white,
                              borderWidth: 3,
                              borderColor: Colors.white,
                              selectedColor: Colors.green,
                              color: Colors.blue,
                              selectedBorderColor: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              isSelected: _selectedFruits,
                              children: fruits,
                              onPressed: (index) {
                                setState(() {
                                  _selectedFruits[index] =
                                      !_selectedFruits[index];
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 80,
                              child: Center(child: Text('2')),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 80,
                              child: Center(child: Text('3')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                name: "Salman",
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextWidget(
                                name: "Salman",
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextWidget(
                                name: "Salman",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(15)),
                          height: 200,
                          child: Center(
                              child: TextWidget(
                            name: "kamal",
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(15)),
                          // height: 80,
                          child: Center(child: Text('6')),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(15)),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Switch(
                                    activeColor: Colors.green,
                                    activeTrackColor: Colors.red,
                                    value: switchOn,
                                    onChanged: (one) {
                                      setState(() {
                                        switchOn = !switchOn;
                                        print(switchOn);
                                      });
                                    }),
                                TextWidget(
                                  name: 'Azizul Hakim',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
