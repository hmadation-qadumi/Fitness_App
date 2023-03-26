import 'package:flutter/material.dart';

import '../../widgets/app_icon.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const AppIcon(
            icon: Icons.edit,
            backgroundColor: Colors.amber,
          ),
          const Text(
            'MY PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          AppIcon(
            icon: Icons.more_vert_rounded,
            backgroundColor: Colors.grey.shade400,
            iconSize: 20,
          ),
        ]),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 60,
            child: Image.asset('assets/images/avatar.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Mohammad Qaddumi'),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('mohammad.j.qaddumi@gmail.com'),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('970569971679'),
          )
        ],
      ),
    );
  }
}
