import 'dart:convert';

import 'package:http/http.dart';
import 'package:uneva_assignment/movies/models/moviedetailmodel.dart';
import 'package:uneva_assignment/movies/models/moviemodel.dart';
import 'package:uneva_assignment/movies/services/endpoints.dart';

class MovieGetterModel {

  Future<List<MovieModel>> moviegetter(String title) async {
 
    String url = "https://omdbapi.com/?s=$title&apikey=$apikey";
    List<MovieModel> movieslist = [];
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      
      if (data["Response"] == "True") {
        List searchlist = data["Search"];
     
        movieslist = searchlist.map((e) => MovieModel.fromMap(e)).toList();
      
        return movieslist;
      } else {
        return [];
      }
    }
     else {
      return [];
    }
  }
  Future<MovieDetailModel> moviedetailgetter(String moviename)async{
  
  String url="https://omdbapi.com/?t=$moviename&apikey=$apikey";
  Response response=await get(Uri.parse(url));

  if(response.statusCode==200){
    Map data=jsonDecode(response.body);
 
    if(data["Response"]=="True"){
      MovieDetailModel movieModel=MovieDetailModel.fromJson(data);
      return movieModel;
    }
    else{
      return MovieDetailModel();
    }
    
  }
  else{
    return MovieDetailModel();
  }

  }
}
