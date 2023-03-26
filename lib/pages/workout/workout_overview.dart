import 'package:fitness_app/widgets/workout_overview_icon.dart';
import 'package:fitness_app/widgets/workout_sets.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/workout_widget.dart';

class WorkoutOverview extends StatelessWidget {
  final String workoutName;
  final String imgURL;
  final int duration;
  final int level;
  final int exercicesNum;
  const WorkoutOverview(
      {super.key,
      required this.workoutName,
      required this.duration,
      required this.level,
      required this.exercicesNum,
      required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              color: Colors.grey[900],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 65, bottom: 50, left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      AppIcon(
                        icon: Icons.more_vert_rounded,
                        backgroundColor: Colors.grey.shade700,
                        iconSize: 20,
                        iconColor: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    workoutName,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  //Workout stats
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WorkoutOverviewIcon(
                        icon: Icons.timelapse,
                        title: 'Duration',
                        text: '${duration}min',
                      ),
                      WorkoutOverviewIcon(
                        icon: Icons.fitness_center,
                        title: 'Exercices',
                        text: exercicesNum.toString(),
                      ),
                      WorkoutOverviewIcon(
                        icon: Icons.timelapse,
                        title: 'Level',
                        text: level.toString(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            // color: Colors.red,
            height: 420,
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Round 1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: exercicesNum,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                        return WorkoutSets(
                            workoutName: 'Mountain Climbers',
                            setsNumber: 20,
                            imgURL: imgURL);
                      })),
                ),
                //Start Now Button
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple[300],
                  ),
                  child: const Center(
                      child: Text(
                    'Start Now',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
