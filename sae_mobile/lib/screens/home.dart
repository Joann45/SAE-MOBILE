import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF363737),
        title: const Text("Home",
        style: TextStyle(color: Color(0xFFBBBBBB))),
      ),
      body: Center(
        child: Text("Home",
          style: TextStyle(color: Color(0xFFBBBBBB))
        ),
      ),
    );
  }
}


