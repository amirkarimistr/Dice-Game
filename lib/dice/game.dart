import 'package:dice/dice/dice.dart';
import 'package:dice/dice/player.dart';

const int FACES = 6;

class Game {
  final int betNumber;
  final Player player;
  final Dice theDice;
  int diceValue = -1;

  double awardMoney = -1;

  Game(this.player, this.theDice, this.betNumber){
    if(betNumber <= 0){
      throw Exception('Invalid data');
    }
  }

  void play() {
    diceValue = theDice.roll();
    final playerSelectedFaces = player.selectedDiceFaces;
    if (playerSelectedFaces.contains(diceValue)) {
      int playerSelectedFacesLength = player.selectedDiceFaces.length;
      final remain = (FACES - playerSelectedFacesLength) * betNumber;
      final result = remain / playerSelectedFacesLength;

      awardMoney=  result;
    } else {
      awardMoney =  0;
    }
  }

  int get getAwardedMoney => awardMoney.round();

}
