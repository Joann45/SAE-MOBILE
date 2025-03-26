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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Search",
              style: TextStyle(
                color: Color(0xFFBBBBBB))),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16),
              child: TextField(
                
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFBBBBBB),
                  hintText: 'Rechercher un resto',

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFBBBBBB), width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFBBBBBB), width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFBBBBBB), width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}
