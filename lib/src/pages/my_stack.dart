
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 260.0,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight / 1.1,
              child: Container(
                height: 200.0,
                width: 280.0,
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child: const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Ipsum ullamco sint id fugiat dolor reprehenderit sint',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 0.0,
              left: 0.0,
              child: Image(
                height: 225.0,
                width: 225.0,
                image: AssetImage(
                  'assets/clock.png'
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}