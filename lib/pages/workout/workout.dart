import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Workout extends StatefulWidget {
  const Workout({super.key});

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 400,
        child: Stack(
          children: [
            Container(
              height: 310,
              color: Colors.red,
            ),
            Positioned(
              top: 270,
              right: 0,
              left: 0,
              child: Container(
                height: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                    color: Colors.grey[850]),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                    color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
