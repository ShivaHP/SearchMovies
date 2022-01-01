import 'dart:convert';


import 'package:http/http.dart';

import 'package:uneva_assignment/blocpractic/shop_restaurant/models/restaurant.dart';

class RestaurantRepository{
  RestaurantRepository(this.client);
  final Client client;

  Future<List<Restaurant>> getrestaurants({int doclength=0,String accesstoken=""})async{
    Map<String,String> headers={
      "accessToken":accesstoken
    };
    Response response=await client.get(Uri.parse("https://zippy-server-1.herokuapp.com/restaurant?from=$doclength&size=5"),headers: headers);
    if(response.statusCode==200){
      Map body=jsonDecode(response.body);
      List result=body["result"];
      List<Restaurant> restaurants=result.map((e) => Restaurant.fromJson(e)).toList();
      return restaurants;
    }
    else{
      throw Exception("Some error occured");
    }

  }
}