import 'package:flutter/material.dart';

class GameModeCard extends StatelessWidget {
  const GameModeCard({
    super.key,
    required this.title,
    required this.route,
  });

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 140,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        child: Text(title, textAlign: TextAlign.center,),
        onPressed: (){
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
