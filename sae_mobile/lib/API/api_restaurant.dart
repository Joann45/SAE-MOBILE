import 'package:flutter/material.dart';
import 'package:sae_mobile/templates/restaurant_card.dart';

class API {
  Future<RestaurantCardList> getRestaurant() async {
    await Future.delayed(Duration(seconds: 1));
    return RestaurantCardList(list: []);
  }
}