import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neostore_app/screens/home/presentation/common_model/product_categories.dart';

import '../../../authentication/presentation/login_page/model/login_response_data.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
    @JsonKey(name: 'user_data') LoginResponseData? data,
    @JsonKey(name: 'product_categories')
        List<ProductCategories>? productCategories,
    @JsonKey(name: 'total_carts') int? totalCarts,
    @JsonKey(name: 'total_orders') int? totalOrders,
  ) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
