import 'package:flutter/material.dart';

import '../pages/workout/workout_overview.dart';

class FeaturedWorkoutWidget extends StatelessWidget {
  final String imgURL;
  const FeaturedWorkoutWidget({super.key, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WorkoutOverview(
                workoutName: 'Whole Body Workout',
                imgURL: 'assets/images/squat.jpg',
                duration: 45,
                exercicesNum: 8,
                level: 2,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Container(
            height: 200,
            width: 320,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage(imgURL), fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 25,
            right: 20,
            left: 20,
            child: Container(
              height: 70,
              // width: 280,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Whole Body Workout',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'LEVEL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.timelapse,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '45 MIN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
