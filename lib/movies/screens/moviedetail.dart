import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uneva_assignment/movies/globalhelpers.dart/colorstextstyles.dart';
import 'package:uneva_assignment/movies/models/moviedetailmodel.dart';
import 'package:uneva_assignment/movies/models/moviedetailprovider.dart';

class MovieDetailScreen extends StatelessWidget {
   MovieDetailModel movieDetailModel=MovieDetailModel();
  MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    movieDetailModel=Provider.of<MovieDetailProvider>(context,listen: true).movieDetailModel;
    Size size = MediaQuery.of(context).size;
    double movierating = double.tryParse(movieDetailModel.imdbRating) ?? 0;
    List directors = movieDetailModel.director.split(",");
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: kwhite.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 50, left: 20, right: 10),
              height: size.height * .54,
              decoration: BoxDecoration(
               
                  image: DecorationImage(
                image: CachedNetworkImageProvider(movieDetailModel.poster),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieDetailModel.title,
                    style: textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    movieDetailModel.genre,
                    style: textStyle.copyWith(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .5),
              child: Container(
                width: size.width,
                padding: EdgeInsets.only(bottom: 20, top: 50),
                decoration: BoxDecoration(
 borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    // color: Colors.white60,
                    boxShadow: [
                      BoxShadow(
                          color: kdarkpurple.withOpacity(0.5),
                          offset: Offset(-7, -7),
                          blurRadius: 50,
                          spreadRadius: 26),
                    ],
                   
                  ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconcontainer("assets/arrow_down.png"),
                        iconcontainer("assets/heart.png"),
                        iconcontainer("assets/forward.png")
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 20, right: 10, left: 10, bottom: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kwhite.withOpacity(0.1)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/star.png",
                                color: movierating > 0
                                    ? korange
                                    : Colors.orange.shade100,
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/star.png",
                                color: movierating >= 4
                                    ? korange
                                    : Colors.orange.shade100,
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/star.png",
                                color: movierating >= 6
                                    ? korange
                                    : Colors.orange.shade100,
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/star.png",
                                color: movierating >= 8
                                    ? korange
                                    : Colors.orange.shade100,
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/star.png",
                                color: movierating >= 10
                                    ? korange
                                    : Colors.orange.shade100,
                                width: 20,
                                height: 20,
                              ),
                              Spacer(),
                              Text(
                                movieDetailModel.imdbRating,
                                style: textStyle.copyWith(color: korange),
                              )
                            ],
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: movieDetailModel.ratings?.length,
                              itemBuilder: (contex, index) {
                                return moviedetailrow(
                                    movieDetailModel.ratings![index].source,
                                    movieDetailModel.ratings![index].value);
                              })
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kwhite.withOpacity(0.1)),
                      child: Column(
                        children: [
                          customrichtext(
                              "assets/calendar.png", movieDetailModel.year),
                          customrichtext(
                              "assets/world.png", movieDetailModel.country),
                          customrichtext(
                              "assets/timer.png", movieDetailModel.runtime),
                          customrichtext(
                              "assets/sound.png", movieDetailModel.language),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kwhite.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10,),
                          Text(
                            "Plot",
                            style: textStyle.copyWith(
                                color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                           "\""+ movieDetailModel.plot+"\"",
                            style: textStyle.copyWith(color: Colors.white60),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Director",
                            style: textStyle.copyWith(
                                color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          customrap(directors),
                          const SizedBox(height: 25),
                          Text(
                            "Actors",
                            style: textStyle.copyWith(
                                color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          customrap(movieDetailModel.actors.split(",")),
                          const SizedBox(
                            height: 25,
                          ),
                          Text("Writers",
                              style: textStyle.copyWith(
                                  color: Colors.white, fontSize: 16)),
                                   const SizedBox(
                            height: 10,
                          ),
                          customrap(movieDetailModel.writer.split(",")),
                           const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customrap(List list) {
    return Wrap(
      runSpacing: 10,
      spacing: 15,
      children: list
          .map((e) => Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
              color: kwhite.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)
            ),
                child: Text(
                  e,
                  style: textStyle.copyWith(
                      color: Colors.white60, fontWeight: FontWeight.w400),
                ),
              ))
          .toList(),
    );
  }

  Widget customrichtext(String assetsname, String title) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Flexible(
              fit: FlexFit.loose,
              child: Image.asset(
                assetsname,
                width: 20,
                height: 20,
              )),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: textStyle.copyWith(
                color: Colors.white60, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  Widget iconcontainer(String imagename) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: kwhite.withOpacity(0.1)),
      child: IconButton(
        icon: Image.asset(
          imagename,
          width: 20,
          height: 20,
        ),
        iconSize: 25,
        onPressed: () {},
      ),
    );
  }

  Widget moviedetailrow(
    String firstchild,
    String secondchild,
  ) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: Text(
            firstchild,
            style: textStyle.copyWith(color: Colors.white60),
          )),
          Flexible(
              child: Text(
            secondchild,
            style: textStyle.copyWith(color: Colors.white),
          )),
        ],
      ),
    );
  }
}
