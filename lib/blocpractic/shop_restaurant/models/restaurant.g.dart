// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurant _$$_RestaurantFromJson(Map<String, dynamic> json) =>
    _$_Restaurant(
      json['name'] as String,
      Location.fromJson(json['location'] as Map<String, dynamic>),
      (json['openHours'] as List<dynamic>)
          .map((e) => Openhours.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['tags'] as List<dynamic>,
      json['address'] as String,
      json['phoneNumber'] as List<dynamic>,
      json['images'] as List<dynamic>,
      json['menuImages'] as List<dynamic>,
      json['features'] as List<dynamic>,
      json['averageRatings'] as Map<String, dynamic>,
      LatestOffers.fromJson(json['latestOffer'] as Map<String, dynamic>),
      json['averagePrice']??0 as int,
      json['averagePricePerMembers']??0 as int,
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'openHours': instance.openHours,
      'tags': instance.tags,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'images': instance.images,
      'menuImages': instance.menuImages,
      'features': instance.features,
      'averageRatings': instance.averageRatings,
      'latestOffer': instance.latestOffer,
      'averagePrice': instance.averagePrice,
      'averagePricePerMembers': instance.averagePricePerMembers,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      json['type'] as String,
      json['coordinates'] as List<dynamic>,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$_Openhours _$$_OpenhoursFromJson(Map<String, dynamic> json) => _$_Openhours(
      json['dayLabel'] as String,
      json['timingLabel'] as String,
      json['openingTime'] as String,
      json['closingTime'] as String,
    );

Map<String, dynamic> _$$_OpenhoursToJson(_$_Openhours instance) =>
    <String, dynamic>{
      'dayLabel': instance.dayLabel,
      'timingLabel': instance.timingLabel,
      'openingTime': instance.openingTime,
      'closingTime': instance.closingTime,
    };

_$_LatestOffers _$$_LatestOffersFromJson(Map<String, dynamic> json) =>
    _$_LatestOffers(
      json['promoCode'] as String,
      json['percentage'] as int,
      json['maxDeduction'] as int,
      json['minOrderAmount'] as int,
      json['expiresAt'] as String,
      json['label'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$$_LatestOffersToJson(_$_LatestOffers instance) =>
    <String, dynamic>{
      'promoCode': instance.promoCode,
      'percentage': instance.percentage,
      'maxDeduction': instance.maxDeduction,
      'minOrderAmount': instance.minOrderAmount,
      'expiresAt': instance.expiresAt,
      'label': instance.label,
      'description': instance.description,
    };
