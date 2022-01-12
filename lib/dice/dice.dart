
import 'dart:math';

const int FACES = 6;

class Dice{
  final Random rand;

  Dice(this.rand);

  int roll(){
    int result = rand.nextInt(FACES);
    if(result < 1 || result > FACES){
      throw Exception();
    }

    return result;
  }
}