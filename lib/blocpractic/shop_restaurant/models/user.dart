import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uneva_assignment/blocpractic/shop_restaurant/models/userinfo.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User{
  factory User({UserInfo? user,bool? isLoggedIn,String? authToken})=_User;

  factory User.fromJson(Map<String,dynamic> json)=>_$UserFromJson(json);
  
}