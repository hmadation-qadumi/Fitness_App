import 'package:flutter/material.dart';

class WorkoutSets extends StatelessWidget {
  final String imgURL;
  final String workoutName;
  final int setsNumber;
  const WorkoutSets(
      {super.key,
      required this.imgURL,
      required this.workoutName,
      required this.setsNumber});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        margin: EdgeInsets.all(10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //Workout video
          Container(
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(imgURL), fit: BoxFit.cover),
            ),
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '${setsNumber}x',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700]),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            workoutName,
            overflow: TextOverflow.clip,
            maxLines: 1,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.grey[700],
          )
        ]),
      ),
    );
  }
}
