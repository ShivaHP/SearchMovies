import 'package:uneva_assignment/movies/models/moviedetailmodel.dart';

class MovieDetailProvider {
  MovieDetailModel movieDetailModel;
  MovieDetailProvider(this.movieDetailModel);

  void updatemovie(MovieDetailModel model){
    this.movieDetailModel=model;
  }

}