import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCard(this.restaurant,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(restaurant.name),
        subtitle: Text(restaurant.tags.toString()),
        leading: CircleAvatar(backgroundImage: CachedNetworkImageProvider(restaurant.images[0])),
  
      )
    );
  }
}