import 'package:flutter/material.dart';
import 'package:labs/call.dart';
import 'package:labs/home.dart';
import 'package:labs/settings.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: nav(),
    );
  }
}

class nav extends StatefulWidget {
  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {
  @override
  int _currentIndex = 0;

  final List<Widget> _children = [
    home(),
    settings(),
    call(),
  ];

 void onTapped(int index)
 {
   setState(() {
     _currentIndex = index;
   });
 }


  Widget build(BuildContext context) {
    return
      Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
         onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Colors.deepOrange,),
              title: Text("HOME"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone,
            color: Colors.green,),
            title: Text('SETTINGS'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call,
            color: Colors.deepPurple,),
            title: Text('CALLS'),
          ),


        ],
      ),
    );
  }
}

