import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'restaurant.dart';
import 'package:flutter/foundation.dart'; // pour debugPrint

class ProviderService {
  // Chargement du JSON et insertion des restaurants
  static Future<void> loadRestaurants() async {
    print("Load");
    final String jsonString = await rootBundle.loadString(
      'data/restaurants_orleans.json',
    );
    final List<dynamic> data = json.decode(jsonString);
    for (final restaurantData in data) {
      try {
        final newId = await Restaurant.create(restaurantData);
        debugPrint("Restaurant inséré avec l'ID : $newId");
      } catch (e) {
        debugPrint("Erreur lors de l'insertion : $e");
      }
    }
    print("Restaurants chargés avec succès");
  }
}
