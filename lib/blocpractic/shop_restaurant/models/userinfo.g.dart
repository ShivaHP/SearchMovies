// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
      phoneNumber: json['phoneNumber'] as int?,
      accountStatus: json['accountStatus'] as String?,
      accountType: json['accountType'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'accountStatus': instance.accountStatus,
      'accountType': instance.accountType,
      'email': instance.email,
      'name': instance.name,
    };
