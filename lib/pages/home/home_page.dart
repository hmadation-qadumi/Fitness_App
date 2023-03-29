import 'package:fitness_app/widgets/app_icon.dart';
import 'package:fitness_app/widgets/featured_workout_widget.dart';
import 'package:fitness_app/widgets/page_header.dart';
import 'package:fitness_app/widgets/workout_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: PageHeader(
          leftIcon: Icons.settings,
          rightIcon: Icons.notifications_outlined,
          title: 'HOME',
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          //Featured Workouts
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Featured Workouts',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 220,
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return const FeaturedWorkoutWidget(
                            imgURL: 'assets/images/workout_1.jpg');
                      })),
                ),
              ],
            ),
          ),
          //Plans Sets
          Container(
            height: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Plans Sets',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('SEE MORE +',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]))
                      ],
                    ),
                  ),
                  Container(
                    height: 210,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return const WorkoutWidget(
                                    imgURL: 'assets/images/workout_3.jpg');
                              })),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
