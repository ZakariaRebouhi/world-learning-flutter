import 'package:flutter/material.dart';

// make sure to add the where the page exist like code above : import 'WHERE WE HAVE THE SCREEN'import 'package:learning/my_card.dart';
import 'package:learning/riche_screen.dart';
import 'package:learning/riche_plus_screen.dart';
import 'package:learning/riche_reset_screen.dart';
import 'package:learning/simples_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RichResetScreen());
  }
}
