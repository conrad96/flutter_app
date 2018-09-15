import 'package:flutter/material.dart';
void main()
{
  var app = MaterialApp(
    home: Scaffold(
     
      appBar: AppBar(
        title: Text("Scratch App"),
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           print("conrad");
         },
         child: Icon(Icons.add),
       ),
    )
  );
  runApp(app);
}