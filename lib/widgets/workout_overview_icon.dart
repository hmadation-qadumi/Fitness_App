import 'package:flutter/material.dart';

class WorkoutOverviewIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;
  const WorkoutOverviewIcon(
      {super.key, required this.icon, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.purple[300],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
