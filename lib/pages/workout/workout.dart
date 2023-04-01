import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
              color: Colors.deepPurpleAccent,
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
                height: 380,
                padding: EdgeInsets.fromLTRB(30, 30, 30, 65),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                    color: Colors.grey[850]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Scored time', style: TextStyle(color: Colors.grey)),
                    Text('02:31',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('20x',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Mountain Climbers',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppIcon(
                          icon: Icons.pause,
                          iconColor: Colors.white,
                          backgroundColor: Colors.grey.shade600,
                          iconSize: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Round1',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        StepProgressIndicator(
                          totalSteps: 10,
                          currentStep: 3,
                          selectedColor: Colors.amber,
                        ),
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
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
