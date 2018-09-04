import 'package:flutter/material.dart';

  //void main() => runApp(MyApp());
  main()
  {
    runApp(MyApp());
  }
  class MyApp extends StatefulWidget
  {
    @override
     State<StatefulWidget> createState(){
        return _MyApp();
    }
  }

  class _MyApp extends State<MyApp>{

    List<String> _products=["Food Stuff"];

     Widget  build(context)
    {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Conrad's App"),
          ),//appBar
          body: Column(
            children: [
              Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
              onPressed: () {
                setState((){
                  _products.add("Fruits");
                });

              },
            child: Text("Add product")
                ),
              ),
            ] )
        ),//scaffold
      );

  }

  }

