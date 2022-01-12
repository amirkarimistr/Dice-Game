import 'package:dice/dice/dice.dart';
import 'package:dice/dice/game.dart';
import 'package:dice/dice/player.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'dice_test.mocks.dart';

void main() {
  group('game', () {
    test('NoWinnerSituation', () {
      const betNumber = 200;
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6)).thenReturn(2);

      final theDice = Dice(mockRandom);
      final player1 = createPlayer('anderson', [1,2,3]);
      final sut = createGame(player1, theDice, betNumber);

      sut.play();

      expect(sut.getPlayer1awardedMoney, 100);
      expect(sut.getPlayer2awardedMoney, 100);

    });

    test('WinnerSituation', () {
      const betNumber = 200;
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6)).thenReturn(2);

      final theDice = Dice(mockRandom);
      final player1 = createPlayer('anderson', [2]);
      final sut = createGame(player1, theDice, betNumber);

      sut.play();

      expect(sut.getPlayer1awardedMoney, 167);
      expect(sut.getPlayer2awardedMoney, 33);

    });

    test('LoserSituation', () {
      const betNumber = 200;
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6)).thenReturn(2);

      final theDice = Dice(mockRandom);
      final player1 = createPlayer('anderson', [1]);
      final sut = createGame(player1, theDice, betNumber);

      sut.play();

      expect(sut.getPlayer1awardedMoney, 33);
      expect(sut.getPlayer2awardedMoney, 167);

    });

  });
}

Player createPlayer(String name, List<int> selectedFaces){
  return Player(name,selectedFaces);
}

Game createGame(Player player, Dice theDice, int betNumber){
  return Game(player, theDice, betNumber);
}
