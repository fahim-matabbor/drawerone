// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pages/first_page.dart';
import 'pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Icon(
                  Icons.favorite,
                  size: 48,
                )),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'F I R S T P A G E',
                ),
                onTap: () {
                  // pop drawer first
                  Navigator.pop(context);

                  // go to home page
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'S E C O N D P A G E',
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
