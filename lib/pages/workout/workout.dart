import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/app_icon.dart';

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
            //Exercise Video
            Container(
              height: 330,
              color: Colors.red,
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 50,
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const AppIcon(
                        icon: Icons.arrow_back_ios_new,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    const AppIcon(
                      icon: Icons.more_vert_rounded,
                      backgroundColor: Color.fromARGB(76, 97, 97, 97),
                      iconSize: 20,
                      iconColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            //Exercise details
            Positioned(
              top: 300,
              right: 0,
              left: 0,
              child: Container(
                height: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                    color: Colors.grey[850]),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Scored time'),
                    Text('02:31'),
                    Row(
                      children: [Text('20x'), Text('Mountain Climbers')],
                    ),
                    Row(
                      children: [
                        AppIcon(
                          icon: Icons.pause,
                          iconColor: Colors.white,
                          backgroundColor: Colors.grey.shade600,
                        )
                      ],
                    )
                  ],
                ),
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
