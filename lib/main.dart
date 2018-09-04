import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
   Widget  build(context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Conrad's App"),
        ),//appBar
        body: Card(child: Column(children: <Widget>[
        Image.asset('assets/me.jpg'),
        Text('Conrad Mugisha')
        ]))
      ),//scaffold
    );

  }

}
