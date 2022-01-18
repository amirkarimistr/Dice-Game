import 'package:dice/dice/dice.dart';
import 'package:dice/dice/game.dart';
import 'package:dice/dice/player.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'dice_test.mocks.dart';

void main() {
  group('game', () {

    test('checkBetNumberIsIncorrect',(){
      const betNumber = -20;
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6) + 1).thenReturn(5);
      final theDice = Dice(mockRandom);

      final player = createPlayer('amir');
      player.setSelectedFaces([1, 2, 3, 4]);

      expect(() => createGame(player, theDice, betNumber), throwsException);


    });
    test('loserSituation', () {
      const betNumber = 100;
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6) + 1).thenReturn(5);
      final theDice = Dice(mockRandom);

      final player = createPlayer('amir');
      player.setSelectedFaces([1, 2, 3, 4]);

      final sut = createGame(player, theDice, betNumber);

      sut.play();

      expect(sut.getAwardedMoney, 0);
    });

    test('winnerSituationWhenClientSelectOneFace', () {
      const betNumber = 100;
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6) + 1).thenReturn(1);
      final theDice = Dice(mockRandom);
      final player = createPlayer('amir');
      player.setSelectedFaces([1]);

      final sut = createGame(player, theDice, betNumber);

      sut.play();

      expect(sut.getAwardedMoney, 500);
    });
  });
}

Player createPlayer(String name) {
  return Player(name);
}

Game createGame(Player player, Dice theDice, int betNumber) {
  return Game(player, theDice, betNumber);
}
