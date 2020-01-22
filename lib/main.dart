import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map_obj/MapData.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Map Object Testing",
      theme: ThemeData(
        backgroundColor: Colors.teal,
        primaryColor: Colors.teal,
      ),
      home: MapClass(),
    );
  }
}

class MapClass extends StatefulWidget{
  MapObject createState() => MapObject();
}
class MapObject extends State<MapClass>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Map Object Testing"),
        backgroundColor: Colors.teal,
        leading:Icon(Icons.assignment_ind),
      ),
      body: Container(
        child: RaisedButton(
          color: Colors.teal,
          child: Text("Call the API"),
          textColor: Colors.white,
          onPressed: callAPI,
        ),
      ),
    );
  }


  callAPI() async{
    String url="https://reqres.in/api/users/2";
    Map<String, String> headers = {"Contenhm jnnt-type": "application/json"};
    Response response=  await get(url,headers: headers);
    final resData= jsonDecode(response.body);
    MapData data= MapData.fromJson(resData);
    print("Response Data: ${data.first_name}  ${data.last_name}");

  }
}