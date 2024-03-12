
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class NeonPage extends StatelessWidget {
  const NeonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.black,
        child: Neon(
          text: 'Neon Retro', 
          color: Colors.pink, 
          font: NeonFont.Membra,
          flickeringText: true,
          flickeringLetters: const [0, 2,5, 7, 9],
          glowingDuration: const Duration(
            milliseconds: 300,
          ),
        ),
      ),
    );
  }
}