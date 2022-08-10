import 'package:flutter/material.dart';

class MapUI extends StatefulWidget {
  const MapUI({ Key? key }) : super(key: key);

  @override
  State<MapUI> createState() => _MapUIState();
}

class _MapUIState extends State<MapUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Put map here"))
    );
  }
}