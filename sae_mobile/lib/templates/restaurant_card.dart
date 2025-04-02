import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card();
  }
}


class RestaurantCardList extends StatelessWidget {

  final List<RestaurantCard> list;

  const RestaurantCardList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final restaurantCard = list[index];
          return restaurantCard;
    });
  }
}