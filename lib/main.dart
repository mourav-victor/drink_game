import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'components/card.dart';
import 'controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Drink Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final controller = Controller();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Observer(
              builder: (context) {
                return widget.controller.currentCard;
              }
            ),
            //const Cards(title: 'Ancião', legend: 'O mais velho bebe!',),
            Spacer(),
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
