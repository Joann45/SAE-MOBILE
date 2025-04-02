import 'package:flutter/material.dart';


class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF363737),
        title: const Text("List",
        style: TextStyle(color: Color(0xFFBBBBBB))),
      ),
      body: Center(
        child: Text("List",
          style: TextStyle(color: Color(0xFFBBBBBB))
        ),
      ),
    );
  }
}

