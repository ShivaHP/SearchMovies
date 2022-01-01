

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/login/bloc/loginform_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/resturant/bloc/restaurant_bloc.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/resturant/bloc/restaurant_event.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/resturant/bloc/restaurant_state.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/resturant/views/restaurant_card.dart';

class ResturantView extends StatefulWidget {

  const ResturantView({Key? key}) : super(key: key);

  @override
  State<ResturantView> createState() => _ResturantViewState();
}

class _ResturantViewState extends State<ResturantView> {
  ScrollController scrollController=ScrollController();
  String accesstoken="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
        accesstoken=context.read<LoginFormBloc>().state.user?.authToken??"";
    context.read<RestaurantBloc>().add(FetchData(accesstoken));
     });
   
  }
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Resturants"),
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
              context.read<RestaurantBloc>().add(FetchData(accesstoken));
        },
        child: Container(
          child: BlocBuilder<RestaurantBloc,RestaurantState>(
            builder: (context,state){
              return Stack(
                children: [
                  ListView.builder(itemCount: state.restaurants.length,itemBuilder: (context,index){
                    return RestaurantCard(state.restaurants[index]);
                  }),
                  Align(
                    alignment: Alignment.center,
                    child: Visibility(visible: state.fetchingStatus==FetchingStatus.loading,child: CircularProgressIndicator()),
                  )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}