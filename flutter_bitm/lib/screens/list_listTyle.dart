import 'package:flutter/material.dart';

class ListListTile extends StatefulWidget {
  const ListListTile({super.key});

  @override
  State<ListListTile> createState() => _ListListTileState();
}

class _ListListTileState extends State<ListListTile> {

  List<Map<String, dynamic>> users = [

    {
      'id': 01,
      'name': 'azizul hakim',
      'email': 'aziz.swe71@gmail.com',
      'occupation': 'software engineer',
      "seen": true
    }, 
    {
      'id': 02,
      'name': 'kamrul hasan',
      'email': 'kamrul.swe71@gmail.com',
      'occupation': ' engineer',
      "seen": false
    },  
    {
      'id': 02,
      'name': 'arif hakim',
      'email': 'arif.swe71@gmail.com',
      'occupation': 'digital marketer',
      "seen": true
    },
    {
      'id': 03,
      'name': 'jahid hasan',
      'email': 'jahid.swe71@gmail.com',
      'occupation': 'marin engineer',
      "seen": false
    },
    {
      'id': 04,
      'name': 'khairul islam',
      'email': 'khairul.swe71@gmail.com',
      'occupation': 'software developer',
      "seen": true
    },
    {
      'id': 05,
      'name': 'khairul islam',
      'email': 'khairul.swe71@gmail.com',
      'occupation': 'software developer',
      "seen": false,
    },
    {
      'id': 06,
      'name': 'khairul islam',
      'email': 'khairul.swe71@gmail.com',
      'occupation': 'software developer',
      "seen": true
    },
    {
      'id': 07,
      'name': 'khairul islam',
      'email': 'khairul.swe71@gmail.com',
      'occupation': 'software developer',
      "seen": false
    },
    {
      'id': 08,
      'name': 'khairul islam',
      'email': 'khairul.swe71@gmail.com',
      'occupation': 'software developer',
      "seen": true
    },
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and ListTile'),
        centerTitle: true,
      ),
      body: ListView.separated(
        reverse: false,
        primary: false,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(users[index]['id'].toString()),
            ),
            title: Text(users[index]['name']),
            subtitle: Text(users[index]['email']),
            trailing: Text(users[index]['seen'].toString()) == true
                ? Icon(Icons.check_circle)
                : Icon(Icons.check_circle_outline),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),


    );
  }
}
