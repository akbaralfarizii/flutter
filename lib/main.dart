import 'package:flutter/material.dart';
import 'package:sportfest/sportList.dart';
import 'package:sportfest/model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Firstpage(),
      title: 'Sport Fest',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class Firstpage extends StatelessWidget{
  final TextEditingController textEditingController = TextEditingController ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.flag),
        title: Text('Sport Fest'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {},
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SportList(sports[index]);
        },
        itemCount: sports.length,
      ),
    );
  }
}