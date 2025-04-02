import 'package:flutter/material.dart';
import '../templates/restaurant_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> restaurants = const [
    {
      "name": "Chez Mario",
      "address": "42 rue des Plats, Lyon",
      "rating": 4.5,
      "imageUrl": "../../data/mario.jpeg,1"
    },
    {
      "name": "La Table Ronde",
      "address": "18 avenue de la République, Paris",
      "rating": 4.2,
      "imageUrl": "https://source.unsplash.com/featured/?restaurant,2"
    },
    {
      "name": "Le Gourmet",
      "address": "5 place Bellecour, Lyon",
      "rating": 4.8,
      "imageUrl": "https://source.unsplash.com/featured/?restaurant,3"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        title: const Text("Restaurants"),
        backgroundColor: const Color(0xFF1E1E1E),
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final resto = restaurants[index];
          return RestaurantCard(
            name: resto["name"],
            address: resto["address"],
            rating: resto["rating"],
            imageUrl: resto["imageUrl"],
          );
        },
      ),
    );
  }
}
