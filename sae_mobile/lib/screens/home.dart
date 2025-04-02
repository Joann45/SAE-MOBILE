import 'package:flutter/material.dart';
import 'package:sae_mobile/templates/restaurant_card.dart';
import 'package:sae_mobile/API/api_restaurant.dart';


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
      body: Column(
        children: <Widget> [


          FutureBuilder<RestaurantCardList?>(
            future: API().getRestaurant(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasData) {
                var restaurantData = snapshot.data!;
                return restaurantData;
              }
              else {
                return Text("ERROR");
              }
            },
          ),


          FutureBuilder<RestaurantCardList?>(
            future: API().getRestaurant(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasData) {
                var restaurantData = snapshot.data!;
                return restaurantData;
              }
              else {
                return Text("ERROR");
              }
            },
          ),


          FutureBuilder<RestaurantCardList?>(
            future: API().getRestaurant(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasData) {
                var restaurantData = snapshot.data!;
                return restaurantData;
              }
              else {
                return Text("ERROR");
              }
            },
          ),


        ]

      ),
    );
  }
}


