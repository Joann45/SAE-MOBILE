import 'package:flutter/material.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF363737),
        title: const Text("Search",
        style: TextStyle(color: Color(0xFFBBBBBB))),
      ),
      body: Center(
        child: Text("Search",
          style: TextStyle(color: Color(0xFFBBBBBB))
        ),
      ),
    );
  }
}
