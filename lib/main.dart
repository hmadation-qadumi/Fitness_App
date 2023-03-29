import 'package:fitness_app/pages/workout/workout.dart';
import 'package:fitness_app/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Workout(),
    );
  }
}
