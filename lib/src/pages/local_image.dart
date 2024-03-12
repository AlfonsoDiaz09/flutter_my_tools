
import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.black,
            Colors.grey,
            Colors.white,
          ],
          stops: [
            0.4,
            0.6,
            1.0,
          ]
        ),
      ),
      child: const Image(
        height: 350.0,
        width: double.infinity,
        image: AssetImage('assets/clock.png')
      ),
    );
  }
}