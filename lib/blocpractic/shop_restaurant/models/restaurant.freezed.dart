// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
class _$RestaurantTearOff {
  const _$RestaurantTearOff();

  _Restaurant call(
      String name,
      Location location,
      List<Openhours> openHours,
      List<dynamic> tags,
      String address,
      List<dynamic> phoneNumber,
      List<dynamic> images,
      List<dynamic> menuImages,
      List<dynamic> features,
      Map<dynamic, dynamic> averageRatings,
      LatestOffers latestOffer,
      int averagePrice,
      int averagePricePerMembers) {
    return _Restaurant(
      name,
      location,
      openHours,
      tags,
      address,
      phoneNumber,
      images,
      menuImages,
      features,
      averageRatings,
      latestOffer,
      averagePrice,
      averagePricePerMembers,
    );
  }

  Restaurant fromJson(Map<String, Object?> json) {
    return Restaurant.fromJson(json);
  }
}

/// @nodoc
const $Restaurant = _$RestaurantTearOff();

/// @nodoc
mixin _$Restaurant {
  String get name => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  List<Openhours> get openHours => throw _privateConstructorUsedError;
  List<dynamic> get tags => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<dynamic> get phoneNumber => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;
  List<dynamic> get menuImages => throw _privateConstructorUsedError;
  List<dynamic> get features => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get averageRatings =>
      throw _privateConstructorUsedError;
  LatestOffers get latestOffer => throw _privateConstructorUsedError;
  int get averagePrice => throw _privateConstructorUsedError;
  int get averagePricePerMembers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res>;
  $Res call(
      {String name,
      Location location,
      List<Openhours> openHours,
      List<dynamic> tags,
      String address,
      List<dynamic> phoneNumber,
      List<dynamic> images,
      List<dynamic> menuImages,
      List<dynamic> features,
      Map<dynamic, dynamic> averageRatings,
      LatestOffers latestOffer,
      int averagePrice,
      int averagePricePerMembers});

  $LocationCopyWith<$Res> get location;
  $LatestOffersCopyWith<$Res> get latestOffer;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res> implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  final Restaurant _value;
  // ignore: unused_field
  final $Res Function(Restaurant) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
    Object? openHours = freezed,
    Object? tags = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? images = freezed,
    Object? menuImages = freezed,
    Object? features = freezed,
    Object? averageRatings = freezed,
    Object? latestOffer = freezed,
    Object? averagePrice = freezed,
    Object? averagePricePerMembers = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      openHours: openHours == freezed
          ? _value.openHours
          : openHours // ignore: cast_nullable_to_non_nullable
              as List<Openhours>,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      menuImages: menuImages == freezed
          ? _value.menuImages
          : menuImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      averageRatings: averageRatings == freezed
          ? _value.averageRatings
          : averageRatings // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      latestOffer: latestOffer == freezed
          ? _value.latestOffer
          : latestOffer // ignore: cast_nullable_to_non_nullable
              as LatestOffers,
      averagePrice: averagePrice == freezed
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as int,
      averagePricePerMembers: averagePricePerMembers == freezed
          ? _value.averagePricePerMembers
          : averagePricePerMembers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $LatestOffersCopyWith<$Res> get latestOffer {
    return $LatestOffersCopyWith<$Res>(_value.latestOffer, (value) {
      return _then(_value.copyWith(latestOffer: value));
    });
  }
}

/// @nodoc
abstract class _$RestaurantCopyWith<$Res> implements $RestaurantCopyWith<$Res> {
  factory _$RestaurantCopyWith(
          _Restaurant value, $Res Function(_Restaurant) then) =
      __$RestaurantCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      Location location,
      List<Openhours> openHours,
      List<dynamic> tags,
      String address,
      List<dynamic> phoneNumber,
      List<dynamic> images,
      List<dynamic> menuImages,
      List<dynamic> features,
      Map<dynamic, dynamic> averageRatings,
      LatestOffers latestOffer,
      int averagePrice,
      int averagePricePerMembers});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $LatestOffersCopyWith<$Res> get latestOffer;
}

/// @nodoc
class __$RestaurantCopyWithImpl<$Res> extends _$RestaurantCopyWithImpl<$Res>
    implements _$RestaurantCopyWith<$Res> {
  __$RestaurantCopyWithImpl(
      _Restaurant _value, $Res Function(_Restaurant) _then)
      : super(_value, (v) => _then(v as _Restaurant));

  @override
  _Restaurant get _value => super._value as _Restaurant;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
    Object? openHours = freezed,
    Object? tags = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? images = freezed,
    Object? menuImages = freezed,
    Object? features = freezed,
    Object? averageRatings = freezed,
    Object? latestOffer = freezed,
    Object? averagePrice = freezed,
    Object? averagePricePerMembers = freezed,
  }) {
    return _then(_Restaurant(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      openHours == freezed
          ? _value.openHours
          : openHours // ignore: cast_nullable_to_non_nullable
              as List<Openhours>,
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      menuImages == freezed
          ? _value.menuImages
          : menuImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      averageRatings == freezed
          ? _value.averageRatings
          : averageRatings // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      latestOffer == freezed
          ? _value.latestOffer
          : latestOffer // ignore: cast_nullable_to_non_nullable
              as LatestOffers,
      averagePrice == freezed
          ? _value.averagePrice
          : averagePrice // ignore: cast_nullable_to_non_nullable
              as int,
      averagePricePerMembers == freezed
          ? _value.averagePricePerMembers
          : averagePricePerMembers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant implements _Restaurant {
  _$_Restaurant(
      this.name,
      this.location,
      this.openHours,
      this.tags,
      this.address,
      this.phoneNumber,
      this.images,
      this.menuImages,
      this.features,
      this.averageRatings,
      this.latestOffer,
      this.averagePrice,
      this.averagePricePerMembers);

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  final String name;
  @override
  final Location location;
  @override
  final List<Openhours> openHours;
  @override
  final List<dynamic> tags;
  @override
  final String address;
  @override
  final List<dynamic> phoneNumber;
  @override
  final List<dynamic> images;
  @override
  final List<dynamic> menuImages;
  @override
  final List<dynamic> features;
  @override
  final Map<dynamic, dynamic> averageRatings;
  @override
  final LatestOffers latestOffer;
  @override
  final int averagePrice;
  @override
  final int averagePricePerMembers;

  @override
  String toString() {
    return 'Restaurant(name: $name, location: $location, openHours: $openHours, tags: $tags, address: $address, phoneNumber: $phoneNumber, images: $images, menuImages: $menuImages, features: $features, averageRatings: $averageRatings, latestOffer: $latestOffer, averagePrice: $averagePrice, averagePricePerMembers: $averagePricePerMembers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Restaurant &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.openHours, openHours) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality()
                .equals(other.menuImages, menuImages) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality()
                .equals(other.averageRatings, averageRatings) &&
            const DeepCollectionEquality()
                .equals(other.latestOffer, latestOffer) &&
            const DeepCollectionEquality()
                .equals(other.averagePrice, averagePrice) &&
            const DeepCollectionEquality()
                .equals(other.averagePricePerMembers, averagePricePerMembers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(openHours),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(menuImages),
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(averageRatings),
      const DeepCollectionEquality().hash(latestOffer),
      const DeepCollectionEquality().hash(averagePrice),
      const DeepCollectionEquality().hash(averagePricePerMembers));

  @JsonKey(ignore: true)
  @override
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      __$RestaurantCopyWithImpl<_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(this);
  }
}

abstract class _Restaurant implements Restaurant {
  factory _Restaurant(
      String name,
      Location location,
      List<Openhours> openHours,
      List<dynamic> tags,
      String address,
      List<dynamic> phoneNumber,
      List<dynamic> images,
      List<dynamic> menuImages,
      List<dynamic> features,
      Map<dynamic, dynamic> averageRatings,
      LatestOffers latestOffer,
      int averagePrice,
      int averagePricePerMembers) = _$_Restaurant;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  String get name;
  @override
  Location get location;
  @override
  List<Openhours> get openHours;
  @override
  List<dynamic> get tags;
  @override
  String get address;
  @override
  List<dynamic> get phoneNumber;
  @override
  List<dynamic> get images;
  @override
  List<dynamic> get menuImages;
  @override
  List<dynamic> get features;
  @override
  Map<dynamic, dynamic> get averageRatings;
  @override
  LatestOffers get latestOffer;
  @override
  int get averagePrice;
  @override
  int get averagePricePerMembers;
  @override
  @JsonKey(ignore: true)
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call(String type, List<dynamic> coordinates) {
    return _Location(
      type,
      coordinates,
    );
  }

  Location fromJson(Map<String, Object?> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String get type => throw _privateConstructorUsedError;
  List<dynamic> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({String type, List<dynamic> coordinates});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<dynamic> coordinates});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_Location(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  _$_Location(this.type, this.coordinates);

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String type;
  @override
  final List<dynamic> coordinates;

  @override
  String toString() {
    return 'Location(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(coordinates));

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  factory _Location(String type, List<dynamic> coordinates) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get type;
  @override
  List<dynamic> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Openhours _$OpenhoursFromJson(Map<String, dynamic> json) {
  return _Openhours.fromJson(json);
}

/// @nodoc
class _$OpenhoursTearOff {
  const _$OpenhoursTearOff();

  _Openhours call(String dayLabel, String timingLabel, String openingTime,
      String closingTime) {
    return _Openhours(
      dayLabel,
      timingLabel,
      openingTime,
      closingTime,
    );
  }

  Openhours fromJson(Map<String, Object?> json) {
    return Openhours.fromJson(json);
  }
}

/// @nodoc
const $Openhours = _$OpenhoursTearOff();

/// @nodoc
mixin _$Openhours {
  String get dayLabel => throw _privateConstructorUsedError;
  String get timingLabel => throw _privateConstructorUsedError;
  String get openingTime => throw _privateConstructorUsedError;
  String get closingTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenhoursCopyWith<Openhours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenhoursCopyWith<$Res> {
  factory $OpenhoursCopyWith(Openhours value, $Res Function(Openhours) then) =
      _$OpenhoursCopyWithImpl<$Res>;
  $Res call(
      {String dayLabel,
      String timingLabel,
      String openingTime,
      String closingTime});
}

/// @nodoc
class _$OpenhoursCopyWithImpl<$Res> implements $OpenhoursCopyWith<$Res> {
  _$OpenhoursCopyWithImpl(this._value, this._then);

  final Openhours _value;
  // ignore: unused_field
  final $Res Function(Openhours) _then;

  @override
  $Res call({
    Object? dayLabel = freezed,
    Object? timingLabel = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
  }) {
    return _then(_value.copyWith(
      dayLabel: dayLabel == freezed
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      timingLabel: timingLabel == freezed
          ? _value.timingLabel
          : timingLabel // ignore: cast_nullable_to_non_nullable
              as String,
      openingTime: openingTime == freezed
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String,
      closingTime: closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OpenhoursCopyWith<$Res> implements $OpenhoursCopyWith<$Res> {
  factory _$OpenhoursCopyWith(
          _Openhours value, $Res Function(_Openhours) then) =
      __$OpenhoursCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dayLabel,
      String timingLabel,
      String openingTime,
      String closingTime});
}

/// @nodoc
class __$OpenhoursCopyWithImpl<$Res> extends _$OpenhoursCopyWithImpl<$Res>
    implements _$OpenhoursCopyWith<$Res> {
  __$OpenhoursCopyWithImpl(_Openhours _value, $Res Function(_Openhours) _then)
      : super(_value, (v) => _then(v as _Openhours));

  @override
  _Openhours get _value => super._value as _Openhours;

  @override
  $Res call({
    Object? dayLabel = freezed,
    Object? timingLabel = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
  }) {
    return _then(_Openhours(
      dayLabel == freezed
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      timingLabel == freezed
          ? _value.timingLabel
          : timingLabel // ignore: cast_nullable_to_non_nullable
              as String,
      openingTime == freezed
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String,
      closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Openhours implements _Openhours {
  _$_Openhours(
      this.dayLabel, this.timingLabel, this.openingTime, this.closingTime);

  factory _$_Openhours.fromJson(Map<String, dynamic> json) =>
      _$$_OpenhoursFromJson(json);

  @override
  final String dayLabel;
  @override
  final String timingLabel;
  @override
  final String openingTime;
  @override
  final String closingTime;

  @override
  String toString() {
    return 'Openhours(dayLabel: $dayLabel, timingLabel: $timingLabel, openingTime: $openingTime, closingTime: $closingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Openhours &&
            const DeepCollectionEquality().equals(other.dayLabel, dayLabel) &&
            const DeepCollectionEquality()
                .equals(other.timingLabel, timingLabel) &&
            const DeepCollectionEquality()
                .equals(other.openingTime, openingTime) &&
            const DeepCollectionEquality()
                .equals(other.closingTime, closingTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dayLabel),
      const DeepCollectionEquality().hash(timingLabel),
      const DeepCollectionEquality().hash(openingTime),
      const DeepCollectionEquality().hash(closingTime));

  @JsonKey(ignore: true)
  @override
  _$OpenhoursCopyWith<_Openhours> get copyWith =>
      __$OpenhoursCopyWithImpl<_Openhours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenhoursToJson(this);
  }
}

abstract class _Openhours implements Openhours {
  factory _Openhours(String dayLabel, String timingLabel, String openingTime,
      String closingTime) = _$_Openhours;

  factory _Openhours.fromJson(Map<String, dynamic> json) =
      _$_Openhours.fromJson;

  @override
  String get dayLabel;
  @override
  String get timingLabel;
  @override
  String get openingTime;
  @override
  String get closingTime;
  @override
  @JsonKey(ignore: true)
  _$OpenhoursCopyWith<_Openhours> get copyWith =>
      throw _privateConstructorUsedError;
}

LatestOffers _$LatestOffersFromJson(Map<String, dynamic> json) {
  return _LatestOffers.fromJson(json);
}

/// @nodoc
class _$LatestOffersTearOff {
  const _$LatestOffersTearOff();

  _LatestOffers call(String promoCode, int percentage, int maxDeduction,
      int minOrderAmount, String expiresAt, String label, String description) {
    return _LatestOffers(
      promoCode,
      percentage,
      maxDeduction,
      minOrderAmount,
      expiresAt,
      label,
      description,
    );
  }

  LatestOffers fromJson(Map<String, Object?> json) {
    return LatestOffers.fromJson(json);
  }
}

/// @nodoc
const $LatestOffers = _$LatestOffersTearOff();

/// @nodoc
mixin _$LatestOffers {
  String get promoCode => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  int get maxDeduction => throw _privateConstructorUsedError;
  int get minOrderAmount => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestOffersCopyWith<LatestOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestOffersCopyWith<$Res> {
  factory $LatestOffersCopyWith(
          LatestOffers value, $Res Function(LatestOffers) then) =
      _$LatestOffersCopyWithImpl<$Res>;
  $Res call(
      {String promoCode,
      int percentage,
      int maxDeduction,
      int minOrderAmount,
      String expiresAt,
      String label,
      String description});
}

/// @nodoc
class _$LatestOffersCopyWithImpl<$Res> implements $LatestOffersCopyWith<$Res> {
  _$LatestOffersCopyWithImpl(this._value, this._then);

  final LatestOffers _value;
  // ignore: unused_field
  final $Res Function(LatestOffers) _then;

  @override
  $Res call({
    Object? promoCode = freezed,
    Object? percentage = freezed,
    Object? maxDeduction = freezed,
    Object? minOrderAmount = freezed,
    Object? expiresAt = freezed,
    Object? label = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      promoCode: promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      maxDeduction: maxDeduction == freezed
          ? _value.maxDeduction
          : maxDeduction // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderAmount: minOrderAmount == freezed
          ? _value.minOrderAmount
          : minOrderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LatestOffersCopyWith<$Res>
    implements $LatestOffersCopyWith<$Res> {
  factory _$LatestOffersCopyWith(
          _LatestOffers value, $Res Function(_LatestOffers) then) =
      __$LatestOffersCopyWithImpl<$Res>;
  @override
  $Res call(
      {String promoCode,
      int percentage,
      int maxDeduction,
      int minOrderAmount,
      String expiresAt,
      String label,
      String description});
}

/// @nodoc
class __$LatestOffersCopyWithImpl<$Res> extends _$LatestOffersCopyWithImpl<$Res>
    implements _$LatestOffersCopyWith<$Res> {
  __$LatestOffersCopyWithImpl(
      _LatestOffers _value, $Res Function(_LatestOffers) _then)
      : super(_value, (v) => _then(v as _LatestOffers));

  @override
  _LatestOffers get _value => super._value as _LatestOffers;

  @override
  $Res call({
    Object? promoCode = freezed,
    Object? percentage = freezed,
    Object? maxDeduction = freezed,
    Object? minOrderAmount = freezed,
    Object? expiresAt = freezed,
    Object? label = freezed,
    Object? description = freezed,
  }) {
    return _then(_LatestOffers(
      promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String,
      percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      maxDeduction == freezed
          ? _value.maxDeduction
          : maxDeduction // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderAmount == freezed
          ? _value.minOrderAmount
          : minOrderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatestOffers implements _LatestOffers {
  _$_LatestOffers(this.promoCode, this.percentage, this.maxDeduction,
      this.minOrderAmount, this.expiresAt, this.label, this.description);

  factory _$_LatestOffers.fromJson(Map<String, dynamic> json) =>
      _$$_LatestOffersFromJson(json);

  @override
  final String promoCode;
  @override
  final int percentage;
  @override
  final int maxDeduction;
  @override
  final int minOrderAmount;
  @override
  final String expiresAt;
  @override
  final String label;
  @override
  final String description;

  @override
  String toString() {
    return 'LatestOffers(promoCode: $promoCode, percentage: $percentage, maxDeduction: $maxDeduction, minOrderAmount: $minOrderAmount, expiresAt: $expiresAt, label: $label, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatestOffers &&
            const DeepCollectionEquality().equals(other.promoCode, promoCode) &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage) &&
            const DeepCollectionEquality()
                .equals(other.maxDeduction, maxDeduction) &&
            const DeepCollectionEquality()
                .equals(other.minOrderAmount, minOrderAmount) &&
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(promoCode),
      const DeepCollectionEquality().hash(percentage),
      const DeepCollectionEquality().hash(maxDeduction),
      const DeepCollectionEquality().hash(minOrderAmount),
      const DeepCollectionEquality().hash(expiresAt),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$LatestOffersCopyWith<_LatestOffers> get copyWith =>
      __$LatestOffersCopyWithImpl<_LatestOffers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatestOffersToJson(this);
  }
}

abstract class _LatestOffers implements LatestOffers {
  factory _LatestOffers(
      String promoCode,
      int percentage,
      int maxDeduction,
      int minOrderAmount,
      String expiresAt,
      String label,
      String description) = _$_LatestOffers;

  factory _LatestOffers.fromJson(Map<String, dynamic> json) =
      _$_LatestOffers.fromJson;

  @override
  String get promoCode;
  @override
  int get percentage;
  @override
  int get maxDeduction;
  @override
  int get minOrderAmount;
  @override
  String get expiresAt;
  @override
  String get label;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$LatestOffersCopyWith<_LatestOffers> get copyWith =>
      throw _privateConstructorUsedError;
}
