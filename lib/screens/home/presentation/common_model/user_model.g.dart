// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      json['user_data'] == null
          ? null
          : LoginResponseData.fromJson(
              json['user_data'] as Map<String, dynamic>),
      (json['product_categories'] as List<dynamic>?)
          ?.map((e) => ProductCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total_carts'] as int?,
      json['total_orders'] as int?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'user_data': instance.data,
      'product_categories': instance.productCategories,
      'total_carts': instance.totalCarts,
      'total_orders': instance.totalOrders,
    };
