import 'dart:math';

import 'package:dice/dice/dice.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'dice_test.mocks.dart';

@GenerateMocks([Random])
void main() {
  group('dice', () {
    test('identifyBadValuesGreaterThanNumberOfFaces', () {
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6)).thenReturn(7);

      final theDice = Dice(mockRandom);

      expect(() => theDice.roll(), throwsException);
    });

    test('identifyBadValuesLesserThanOne', () {
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6)).thenReturn(-1);

      final theDice = Dice(mockRandom);

      expect(() => theDice.roll(), throwsException);
    });

    test('identifyDiceWorkingCorrectly', () {
      final mockRandom = MockRandom();
      when(mockRandom.nextInt(6)).thenReturn(3);

      final theDice = Dice(mockRandom);

      expect(theDice.roll(), 3);
    });
  });
}
