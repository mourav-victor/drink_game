

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
      super.key,
      required this.title,
      required this.legend,
  });

  final String title;
  final String legend;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 32), textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Text(legend, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
        ],
      ),
    );

  }
}