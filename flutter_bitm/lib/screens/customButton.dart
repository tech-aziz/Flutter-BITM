import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String buttonName;
  CustomButton({super.key, required this.buttonName});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String? selectedValue = 'Choose';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          _showDialog();
        }),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  widget.buttonName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(selectedValue.toString()),
            DropdownButton(
                items: [
                  DropdownMenuItem(
                    value: 'Computer',
                    child: Text('Computer'),
                  ),
                  DropdownMenuItem(value: 'Mobile', child: Text('Mobile')),
                  DropdownMenuItem(value: 'Tab', child: Text('Tab')),
                  DropdownMenuItem(value: 'Iphone', child: Text('Iphone')),
                  DropdownMenuItem(value: 'Android', child: Text('Android')),
                ],
                onChanged: (val) {
                  setState(() {
                    selectedValue = val;
                  });
                }),
            DropdownButtonFormField(
                hint: Text('Sample'),
                items: [
                  DropdownMenuItem(
                    value: 'Computer',
                    child: Text('Computer'),
                  ),
                  DropdownMenuItem(value: 'Mobile', child: Text('Mobile')),
                  DropdownMenuItem(value: 'Tab', child: Text('Tab')),
                  DropdownMenuItem(value: 'Iphone', child: Text('Iphone')),
                  DropdownMenuItem(value: 'Android', child: Text('Android')),
                ],
                onChanged: (val) {
                  setState(() {
                    selectedValue = val;
                  });
                }),
            DropdownButtonHideUnderline(
                child: Column(
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            )),
            DropdownMenuItem(value: 'hi', child: Text('dropdown'))
          ],
        ),
      ),
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: _title(),
            content: _body(),
          );
        }));
  }

  Widget _title() {
    return Row(
      children: [
        const Text('Add Item'),
        const Spacer(),
        InkWell(
          child: Icon(
            Icons.cancel_outlined,
            color: Colors.red.shade300,
            size: 20,
          ),
          onTap: () {
            // Get.back();
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  Widget _body() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54)),
                child: DropdownButtonFormField(
                  hint: Text(
                    'Please Choose a Category',
                    style: TextStyle(color: Colors.black),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'one',
                      child: Text('one'),
                    ),
                    DropdownMenuItem(
                      value: 'two',
                      child: Text('two'),
                    ),
                    DropdownMenuItem(
                      value: 'three',
                      child: Text('three'),
                    )
                  ],
                  onChanged: (selectedItem) {
                    debugPrint(selectedItem.toString());
                  },
                ),
              ),
              SizedBox(
                height: 17,
              ),
              TextField(
                maxLength: 15,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Item Name',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 10,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Short Name',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Item Price',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintText: '0.0',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'SD(%)',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintText: '0.0',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'VAT(%)',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF0E4A88),
                ),
                child: ElevatedButton(
                  child: Text('ADD'),
                  onPressed: () {
                    // Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )),
    );
  }
}
