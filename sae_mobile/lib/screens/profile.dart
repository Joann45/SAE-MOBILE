import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF363737),
        title: const Text("Profile",
        style: TextStyle(color: Color(0xFFBBBBBB))),
      ),
      body: Center(
        child: Text("Profile",
          style: TextStyle(color: Color(0xFFBBBBBB))
        ),
      ),
    );
  }
}
