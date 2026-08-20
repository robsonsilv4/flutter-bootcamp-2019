import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceeApp());
}

class DiceeApp extends StatelessWidget {
  const DiceeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicee',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Dicee')),
        backgroundColor: Colors.red,
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDice = Random().nextInt(6) + 1;
  int _rightDice = Random().nextInt(6) + 1;

  void _rollDices() {
    setState(() {
      _leftDice = Random().nextInt(6) + 1;
      _rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: _rollDices,
              child: Image.asset('images/dice$_leftDice.png'),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: _rollDices,
              child: Image.asset('images/dice$_rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
