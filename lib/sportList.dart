import 'package:flutter/material.dart';
import 'package:sportfest/model.dart';
import 'package:sportfest/details.dart';

class SportList extends StatelessWidget {
  final SportFest sportFest;
  SportList(
    this.sportFest
  );
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        child: RaisedButton(
          child: Image.asset(sportFest.image),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(sportFest),
              ),
            );
          },
        ),
      ),
    );
  }
}