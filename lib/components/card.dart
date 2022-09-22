

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
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: 36)),
        Text(legend, style: TextStyle(fontSize: 24)),
      ],
    );

  }
}