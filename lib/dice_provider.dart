import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';
final randomizer = Random();
class DiceNotifier extends StateNotifier<String>
{DiceNotifier() :super('assets/images/dice-1.png');

  void rollDice (){
    int index = randomizer.nextInt(6)+1;
    state = 'assets/images/dice-$index.png';
  }
}

final diceProvider =StateNotifierProvider<DiceNotifier,String>((ref){
  return DiceNotifier();
});