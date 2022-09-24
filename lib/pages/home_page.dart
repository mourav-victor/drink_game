import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../components/game_mode_card.dart';
import '../controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Controller();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //title: const Text('Drink Game'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            const Text('Drink Game', style: TextStyle(fontSize: 54)),
            const Text('O jogo definitivo para animar as suas festas',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            const Text('Modos',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                GameModeCard(title: 'Clássico', route: '/classic_game'),
                GameModeCard(title: 'Votação', route: '/classic_game')
              ],
            ),

            //const Cards(title: 'Ancião', legend: 'O mais velho bebe!',),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}


