
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uneva_assignment/movies/globalhelpers.dart/colorstextstyles.dart';
import 'package:uneva_assignment/movies/globalhelpers.dart/converters.dart';
import 'package:uneva_assignment/movies/globalhelpers.dart/futures.dart';
import 'package:uneva_assignment/movies/models/moviedetailmodel.dart';
import 'package:uneva_assignment/movies/models/moviedetailprovider.dart';
import 'package:uneva_assignment/movies/models/moviemodel.dart';
import 'package:uneva_assignment/movies/screens/moviedetail.dart';
const double buttonsize=60;

class HomeScreen extends StatefulWidget {
  
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late TextEditingController searchcontroller;
  
  List<MovieModel> movieslist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchcontroller=TextEditingController();
    searchcontroller.text="Avengers";
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchcontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: searchcontroller,
              onEditingComplete: (){
                setState(() {
                  
                });
              },
              style: textStyle.copyWith(color: Colors.white, fontSize: 16),
              decoration: InputDecoration(
                fillColor: kwhite.withOpacity(0.5),
                prefixIcon: IconButton(
                  icon: Image.asset(
                    "assets/search.png",
                    width: 25,
                    height: 25,
                  ),
                  onPressed: () {
                  setState(() {
                    
                  });

                   
                  },
                ),
                filled: true,
                hintText: "Search for movies / shows",
                hintStyle: textStyle.copyWith(color: Colors.white54),
                suffixIcon: IconButton(
                  icon: Image.asset(
                    "assets/cancel.png",
                    width: 25,
                    height: 25,
                  ),
                  onPressed: () {
                  searchcontroller.clear();
                  },
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent)),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior:ScrollViewKeyboardDismissBehavior.onDrag,
        child: FutureBuilder<List<MovieModel>>(
            future: MovieGetterModel().moviegetter(searchcontroller.text.toLowerCase()),
            builder: (context, AsyncSnapshot<List<MovieModel>> snapshot) {
              if (snapshot.hasError) {
                return Text(
                  "Sorry, some error ocurred while fetching your movies",
                  style: textStyle.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                );
              } else if (snapshot.connectionState ==
                  ConnectionState.waiting) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    child: CircularProgressIndicator());
              } else {
                if (snapshot.data!.isEmpty) {
                  return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: Text(
                        "Sorry, no movies found",
                        style: textStyle.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ));
                }
                return Column(
                  children: snapshot.data
                          ?.map((e) => Container(
                            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                            child: MoviePosterCard(
                                  model: e,
                                ),
                          ))
                          .toList() ??
                      [],
                );
              }
            }),
      ),
    );
  }
}

class MoviePosterCard extends StatelessWidget {
  final MovieModel? model;
  const MoviePosterCard({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieDetailModel>(
        future: MovieGetterModel().moviedetailgetter(model?.title ?? ""),
        builder: (context, AsyncSnapshot<MovieDetailModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text(
              "Some error occured while fetching your movie",
              style: textStyle.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            );
          } else {
            return InkWell(
              onTap: () {
             navigatetodetailscreen(context, snapshot.data??MovieDetailModel());
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 10),
                      height: 200,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(model?.poster??""),
                            filterQuality: FilterQuality.high,
                            // image: NetworkImage(model?.poster ?? ""),
                            onError: (obj, stck) {
                              print("error loading image");
                            },
                            fit: BoxFit.cover,
                          )),
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          margin: EdgeInsets.only(top: 10, left: 10),
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(10)),
                          child: RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                alignment: PlaceholderAlignment.middle),
                            TextSpan(
                                text: " ${snapshot.data?.imdbRating ?? 0}/10",
                                style: textStyle.copyWith(
                                    color: Colors.white, fontSize: 12.5))
                          ])))),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model?.title ?? "",
                          style: textStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            WidgetSpan(
                                child: Image.asset(
                                  "assets/timer.png",
                                  width: 16,
                                  height: 16,
                                ),
                                alignment: PlaceholderAlignment.middle),
                            TextSpan(
                                text: "  " +
                                    timeconverted(
                                        snapshot.data?.runtime.split(" ")[0] ??
                                            "33"),
                                style: textStyle.copyWith(
                                    color: korange, fontSize: 12.5))
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        });
  }
  navigatetodetailscreen(BuildContext context,MovieDetailModel model){
       Provider.of<MovieDetailProvider>(context,listen: false).updatemovie(model);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieDetailScreen(
                           )));
  }
}
