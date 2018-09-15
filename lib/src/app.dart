import "package:flutter/material.dart";
import "package:http/http.dart";
import "dart:async";
import "models/image_model.dart";
import "dart:convert";
import "widgets/image_list.dart";

class App extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return AppState();
    }
}
class AppState extends State<App>{
  int counter = 0;
  List<ImageModel> images=[];
  void  fetchImage() async {
    counter++;
    final response = await get('http://jsonplaceholder.typicode.com/photos/$counter');
    final imageModel= ImageModel.fromJson(json.decode(response.body));
  
    setState(() {
          images.add(imageModel);
        });
  }
  Widget build(context){
    return MaterialApp(
    home: Scaffold(
     
      appBar: AppBar(
        title: Text("Scratch App"),
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: fetchImage,
         child: Icon(Icons.add),
       ),
       body: ImageList(images),
    )
  );
  }
}