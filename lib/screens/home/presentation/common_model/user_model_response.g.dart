// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModelResponse _$$_UserModelResponseFromJson(Map<String, dynamic> json) =>
    _$_UserModelResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      userMsg: json['user_msg'] as String?,
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelResponseToJson(
        _$_UserModelResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_msg': instance.userMsg,
      'data': instance.data,
    };
