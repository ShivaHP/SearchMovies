import 'package:freezed_annotation/freezed_annotation.dart';
part 'restaurant.g.dart';
part 'restaurant.freezed.dart';

@freezed
class Restaurant with _$Restaurant {
  factory Restaurant(
      String name,
      Location location,
      List<Openhours> openHours,
      List tags,
      String address,
      List phoneNumber,
      List images,
      List menuImages,
      List features,
      Map averageRatings,
      LatestOffers latestOffer,
      int averagePrice,
      int averagePricePerMembers) = _Restaurant;
  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location(String type, List coordinates) = _Location;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Openhours with _$Openhours {
  factory Openhours(String dayLabel, String timingLabel, String openingTime,
      String closingTime) = _Openhours;
  factory Openhours.fromJson(Map<String, dynamic> json) =>
      _$OpenhoursFromJson(json);
}

// class Ratings with _$Ratings{
//   factory Ratings(String mode,String value,String totalRatings)=_Ratings;
//   factory Ratings.fromJson(Map<String,dynamic> json)=>_$RatingsFromJson;
// }

@freezed
class LatestOffers with _$LatestOffers {
  factory LatestOffers(
      String promoCode,
      int percentage,
      int maxDeduction,
      int minOrderAmount,
      String expiresAt,
      String label,
      String description) = _LatestOffers;
  factory LatestOffers.fromJson(Map<String, dynamic> json) =>
      _$LatestOffersFromJson(json);
}

  // "promoCode": "BURGER_MANIA",
  //               "percentage": 40,
  //               "maxDeduction": 125,
  //               "minOrderAmount": 200,
  //               "expiresAt": "2022-01-06T14:41:36.483Z",
  //               "label": "40% upto ₹150",
  //               "description": "40% Flat off 
  