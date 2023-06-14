// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpRequest _$$_SignUpRequestFromJson(Map<String, dynamic> json) =>
    _$_SignUpRequest(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      confirm_password: json['confirm_password'] as String?,
      gender: json['gender'] as String?,
      phone_no: json['phone_no'] as int?,
    );

Map<String, dynamic> _$$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'password': instance.password,
      'confirm_password': instance.confirm_password,
      'gender': instance.gender,
      'phone_no': instance.phone_no,
    };
