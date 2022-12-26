import 'package:flutter/material.dart';
import 'package:flutter_bitm/screens/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Map<String, dynamic>> studentInfo = [
    {
      'name': 'arun',
      'gender': 'Male',
      'id': 1,
      'physics': 88,
      'maths': 87,
      'english': 78
    },
    {
      'name': 'rajesh',
      'gender': 'Male',
      'id': 2,
      'physics': 96,
      'maths': 100,
      'english': 95
    },
    {
      'name': 'moorthy',
      'gender': 'Male',
      'id': 3,
      'physics': 89,
      'maths': 90,
      'english': 70
    },
    {
      'name': 'raja',
      'gender': 'Male',
      'id': 4,
      'physics': 30,
      'maths': 25,
      'english': 40
    },
    {
      'name': 'usha',
      'gender': 'Female',
      'id': 5,
      'physics': 67,
      'maths': 45,
      'english': 78
    },
    {
      'name': 'priya',
      'gender': 'Female',
      'id': 6,
      'physics': 56,
      'maths': 46,
      'english': 78
    },
    {
      'name': 'Sundar',
      'gender': 'Male',
      'id': 7,
      'physics': 12,
      'maths': 67,
      'english': 67
    },
    {
      'name': 'Kavitha',
      'gender': 'Female',
      'id': 8,
      'physics': 78,
      'maths': 71,
      'english': 67
    },
    {
      'name': 'Dinesh',
      'gender': 'Male',
      'id': 9,
      'physics': 56,
      'maths': 45,
      'english': 67
    },
    {
      'name': 'Hema',
      'gender': 'Female',
      'id': 10,
      'physics': 71,
      'maths': 90,
      'english': 23
    },
    {
      'name': 'Gowri',
      'gender': 'Female',
      'id': 11,
      'physics': 100,
      'maths': 100,
      'english': 100
    },
    {
      'name': 'Ram',
      'gender': 'Male',
      'id': 12,
      'physics': 78,
      'maths': 55,
      'english': 47
    },
    {
      'name': 'Murugan',
      'gender': 'Male',
      'id': 13,
      'physics': 34,
      'maths': 89,
      'english': 78
    },
    {
      'name': 'Jenifer',
      'gender': 'Female',
      'id': 14,
      'physics': 67,
      'maths': 88,
      'english': 90
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: studentInfo.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondPage(
                          name: studentInfo[index]['name'],
                          gender: studentInfo[index]['gender'],
                          id: studentInfo[index]['id'],
                          physics: studentInfo[index]['physics'],
                          maths: studentInfo[index]['maths'],
                          english: studentInfo[index]['english'],

                        )));
              },
              child: Card(
                elevation: 10,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(studentInfo[index]['id'].toString())),
                  ),
                  title: Text(studentInfo[index]['name']),
                  subtitle: Text(studentInfo[index]['gender'].toString()),
                  trailing: Column(
                    children: [
                      Text(
                          'physics: ${studentInfo[index]['physics'].toString()}'),
                      SizedBox(
                        height: 2,
                      ),
                      Text('maths: ${studentInfo[index]['maths'].toString()}'),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                          'english: ${studentInfo[index]['english'].toString()}'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
