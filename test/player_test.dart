import 'package:dice/dice/player.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('player', () {
    test('identifyBadValuesGreaterThanNumberOfDiceFaces', () {
      final sut = createPlayer();

      expect(() => sut.setSelectedFaces([8, 7]), throwsException);
    });
  });
}

Player createPlayer() {
  return Player('Amir');
}
