import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controller.dart';

class ClassicGame extends StatefulWidget {
  ClassicGame({Key? key}) : super(key: key);

  final controller = Controller();

  @override
  State<ClassicGame> createState() => _ClassicGameState();
}

class _ClassicGameState extends State<ClassicGame> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drink Game'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Observer(
                builder: (context) {
                  return widget.controller.currentCard;
                }
            ),
            //const Cards(title: 'Ancião', legend: 'O mais velho bebe!',),
            const Spacer(),
            Observer(
                builder: (context) {
                  return Text(
                      'rodadas: ${widget.controller.counter}',
                      style: const TextStyle(fontSize: 22)
                  );
                }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          widget.controller.increment();
          widget.controller.changeCard();
        },
        tooltip: 'Increment',
        backgroundColor: Colors.black,
        child: const Icon(Icons.navigate_next),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}