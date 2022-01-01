import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/models/restaurant.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/packages/restaurantrepository.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/resturant/bloc/restaurant_event.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/resturant/bloc/restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent,RestaurantState>{
  RestaurantBloc(this.repository):super(RestaurantState()){
    on<FetchData>(_onfetchdata);
  }
final RestaurantRepository repository;

  void _onfetchdata(FetchData event,Emitter<RestaurantState> emit)async{
    if(state.hasreachedmax){
      return;
    }
    try {
      emit(state.copyWith(fetchingStatus: FetchingStatus.loading));
      List<Restaurant> restaurants=await repository.getrestaurants(doclength: state.restaurants.length,accesstoken: event.accesstoken);
    
      if(restaurants.isEmpty){
        emit(state.copyWith(hasreachedmax: true,fetchingStatus: FetchingStatus.success));
      }
      else{
        restaurants.addAll(state.restaurants);
        emit(state.copyWith(fetchingStatus: FetchingStatus.success,restaurants: restaurants));
      }
    } on Exception catch (e) {
      emit(state.copyWith(fetchingStatus: FetchingStatus.failure,));
    }

  }
  
}