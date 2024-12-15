import 'package:flutter/material.dart';

class Kolom extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Belajar Kolom'),),
      body: Container(
          color: Colors.red[400],
          child: Column(
            children: [
            Text('Flutter 01', style: TextStyle(fontSize:30,color: Colors.yellow[500]),),
            Text('Flutter 02', style: TextStyle(fontSize:30,color: Colors.yellow[500]),),
            Text('Flutter 03', style: TextStyle(fontSize:30,color: Colors.yellow[500]),),
            Text('Flutter 04', style: TextStyle(fontSize:30,color: Colors.yellow[500]),),
            Text('Flutter 05', style: TextStyle(fontSize:30,color: Colors.yellow[500]),),
            Container(
              color: Colors.amber,
              height: 80,
              width: 120,
          ),
          ],
        )
      ),
    );
  }
}