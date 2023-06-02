// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseData _$$_LoginResponseDataFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseData(
      id: json['id'] as int?,
      roleId: json['role_id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      phoneNo: json['phone_no'] as String?,
      isActive: json['is_active'] as bool?,
      created: json['createdata'] as String?,
      modified: json['modified'] as String?,
      accessToken: json['access_token'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseDataToJson(
        _$_LoginResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role_id': instance.roleId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'username': instance.username,
      'gender': instance.gender,
      'dob': instance.dob,
      'phone_no': instance.phoneNo,
      'is_active': instance.isActive,
      'createdata': instance.created,
      'modified': instance.modified,
      'access_token': instance.accessToken,
    };
