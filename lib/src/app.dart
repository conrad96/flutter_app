import "package:flutter/material.dart";


class App extends StatelessWidget{
  
  Widget build(context){
    return MaterialApp(
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
  }
}