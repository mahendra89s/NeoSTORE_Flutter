// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponse _$$_BaseResponseFromJson(Map<String, dynamic> json) =>
    _$_BaseResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      userMsg: json['user_msg'] as String?,
    );

Map<String, dynamic> _$$_BaseResponseToJson(_$_BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_msg': instance.userMsg,
    };
