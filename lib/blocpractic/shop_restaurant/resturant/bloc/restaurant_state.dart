import 'package:uneva_assignment/blocpractic/shop_restaurant/models/restaurant.dart';

enum FetchingStatus{loading,success,failure,initial}


class RestaurantState{
  final List<Restaurant> restaurants;
  final FetchingStatus fetchingStatus;
  final bool hasreachedmax;
  RestaurantState({this.restaurants=const [],this.fetchingStatus=FetchingStatus.initial,this.hasreachedmax=false});

  RestaurantState copyWith({List<Restaurant>? restaurants,FetchingStatus? fetchingStatus,bool? hasreachedmax }){
    return RestaurantState(restaurants: restaurants??this.restaurants,fetchingStatus: fetchingStatus??this.fetchingStatus,hasreachedmax: hasreachedmax??this.hasreachedmax);
  }

}