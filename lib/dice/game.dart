import 'package:dice/dice/dice.dart';
import 'package:dice/dice/player.dart';

const int FACES = 6;

class Game {
  final int betNumber;
  final Player player;
  final Dice theDice;
  int diceValue = -1;

  double player1awardedMoney = -1;
  double player2awardedMoney = -1;

  Game(this.player, this.theDice, this.betNumber);

  void play() {
    diceValue = theDice.roll();

    int playerSelectedFaces = player.selectedDiceFaces.length;
    final percent = 100 - (playerSelectedFaces * 100 / FACES);


    //check players winning state
    if (player.selectedDiceFaces.contains(diceValue)) {
      player1awardedMoney = (betNumber / 100) * percent;
      player2awardedMoney = betNumber - player1awardedMoney;
    } else {
      player2awardedMoney = (betNumber / 100) * percent;
      player1awardedMoney = betNumber - player2awardedMoney;
    }

  }

  int get getPlayer1awardedMoney => player1awardedMoney.round();

  int get getPlayer2awardedMoney => player2awardedMoney.round();
}
