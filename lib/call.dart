import 'package:flutter/material.dart';
class call extends StatefulWidget {
  @override
  _callState createState() => _callState();
}

class _callState extends State<call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACTS PAGE "),
        centerTitle: true,
      ),
      body: Center(
        child: Text("CONTACT US PAGE"),

      ),
    );
  }
}
