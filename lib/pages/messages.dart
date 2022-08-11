import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({ Key? key }) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 25,
            fontWeight: FontWeight.w800
          ),
        ),
        backgroundColor: Colors.red[400],
        elevation: 0
      ),
      body: Center(child: Text("body here"))
    );
  }
}