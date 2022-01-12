// Mocks generated by Mockito 5.0.17 from annotations
// in dice/test/dice_test.dart.
// Do not manually edit this file.

import 'dart:math' as _i2;

import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [Random].
///
/// See the documentation for Mockito's code generation for more information.
class MockRandom extends _i1.Mock implements _i2.Random {
  MockRandom() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int nextInt(int? max) =>
      (super.noSuchMethod(Invocation.method(#nextInt, [max]), returnValue: 0)
          as int);
  @override
  double nextDouble() =>
      (super.noSuchMethod(Invocation.method(#nextDouble, []), returnValue: 0.0)
          as double);
  @override
  bool nextBool() =>
      (super.noSuchMethod(Invocation.method(#nextBool, []), returnValue: false)
          as bool);
}
