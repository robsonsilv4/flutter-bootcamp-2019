import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> _playSound(int number) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$number.wav'));
  }

  Widget _buildKey({required int sound, required Color color}) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: () => _playSound(sound),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildKey(sound: 1, color: Colors.red),
              _buildKey(sound: 2, color: Colors.orange),
              _buildKey(sound: 3, color: Colors.yellow),
              _buildKey(sound: 4, color: Colors.green),
              _buildKey(sound: 5, color: Colors.teal),
              _buildKey(sound: 6, color: Colors.blue),
              _buildKey(sound: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
