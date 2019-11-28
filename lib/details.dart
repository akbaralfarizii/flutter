import 'package:flutter/material.dart';
import 'package:sportfest/model.dart';

class DetailPage extends StatelessWidget {
  final SportFest sportFest;
  DetailPage(this.sportFest);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(sportFest.image,height: 200, scale: 0.7,),
            ),
            Center(
              child: Text(sportFest.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.red),),
            ),
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(32),
              child: Text(sportFest.desc, style: TextStyle(fontSize: 16, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}