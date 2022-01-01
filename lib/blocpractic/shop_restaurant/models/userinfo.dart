import 'package:freezed_annotation/freezed_annotation.dart';
part 'userinfo.g.dart';
part 'userinfo.freezed.dart';

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({int? phoneNumber,String? accountStatus,String? accountType,String? email,String? name})=_UserInfo;
  factory UserInfo.fromJson(Map<String,dynamic> json)=>_$UserInfoFromJson(json);
}