import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WidgetLibrary{
  static Widget cachedimage({String imageurl="",double width=0,double height=0}){
    return CachedNetworkImage(imageUrl: imageurl,progressIndicatorBuilder: (context,val1,progress){
      return Container(alignment: Alignment.center,child: CircularProgressIndicator(value: progress.progress,),);
    },errorWidget: (context,val1,val2){
      return Icon(Icons.error,color: Colors.red,);
    },width: width,height: height,fit: BoxFit.cover,);
    
  }
}