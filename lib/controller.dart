import 'package:mobx/mobx.dart';
import 'components/card.dart';
import 'dart:math';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{
  Random random = Random();

  @observable
  Cards currentCard = Cards(title: 'Entrando no clima', legend: 'Todos os jogadores bebem uma dose. Saúde!');

  @observable
  int counter = 0;

  @action
  increment(){
    counter++;
  }

  @action
  changeCard(){
    int cardNumber = random.nextInt(card_list.length);
    //current_card = Cards(title: 'Ancião', legend: 'O jogador mais velho bebe!');
    currentCard = card_list[cardNumber];
  }

  // Lista dos possíveis Cards
  List<Cards> card_list = [
    Cards(title: "Apple", legend: "Todos os jogadores que possuem iPhone bebem."),
    Cards(title: "Graduados", legend: "Todos os jogadores formados bebem."),
    Cards(title: "Aniversário", legend: "Todos que já fizeram aniversário esse ano bebem uma dose. Se alguém estiver fazendo aniversário hoje, bebe três doses."),
    Cards(title: "Solteiros", legend: "Todos os jogadores solteiros bebem."),
    Cards(title: "Óculos", legend: "Todos os jogadores que estão usando óculos bebem."),
    Cards(title: "Extremos", legend: "O jogador mais alto e o mais baixo tomam uma dose."),


    Cards(title: "Europa", legend: "Cite o nome de 10 países europeus. Tome uma dose para cada nome errado ou faltante."),
    Cards(title: "Mestre Mandou", legend: "Escolha dois jogadores para virar uma dose ao mesmo tempo. Detalhe: eles devem virar a dose um pro outro."),
    Cards(title: "Aniversário", legend: "Adivinhe a data de aniversário da pessoa a sua esquerda. Três chances, se você errar, bebe."),

  ];


  // //Modalidades:
  // Conhecendo o grupo
  // Drink or truth
  // Mestre mandou
  // Hot questions
  // Votação
  //
}