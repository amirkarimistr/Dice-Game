import 'package:dice/dice/player.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('player', () {
    test('identifyBadValuesGreaterThanNumberOfDiceFaces', () {
      final sut = createPlayer();

      expect(() => sut.setSelectedFaces([8, 7]), throwsException);
    });

    test('identifySelectFacesListIsEmpty',(){
      final sut = createPlayer();

      expect(() => sut.setSelectedFaces([]), throwsException);

    });

    test('identifySelectedFacesListSizeIsGreaterThanSix',(){

      final sut = createPlayer();

      expect(() => sut.setSelectedFaces([1,2,3,4,5,6,7]), throwsException);
    });
  });
}

Player createPlayer() {
  return Player('Amir');
}
