import 'package:flutter/material.dart';

import 'package:first_app/customContainer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: Scaffold(
            body: CustomContainer([Color.fromARGB(255, 19, 53, 57),
              Color.fromARGB(255, 118, 205, 216),
              Color.fromARGB(255, 118, 15, 123)])
        ),
      ),
    ),
  );
}