class MovieModel{
 String title;
 String year;
 String imdbid;
 String type;
 String poster;
 MovieModel({this.title="",this.year="",this.imdbid="",this.type="",this.poster=""}); 
 factory MovieModel.fromMap(Map data){
   return MovieModel(
     title: data["Title"],
     year: data["Year"],
     imdbid: data["imdbID"],
     type: data["Type"],
     poster: data["Poster"]
   );
 }
}