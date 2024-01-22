import 'dart:math';

import 'package:first_app/dice_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiceRoller extends ConsumerWidget {
  const DiceRoller({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref) {
    print('#########');
    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
              ref.watch(diceProvider),
              width: 200,
            ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: (){
              ref.read(diceProvider.notifier).rollDice();
            },
            style: TextButton.styleFrom(backgroundColor: Colors.cyan,
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 29)
            ),
            child: const Text('Roll Dice'),
        ),
      ],
    );

  }

}