import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_categories.freezed.dart';
part 'product_categories.g.dart';

@freezed
class ProductCategories with _$ProductCategories {
  const factory ProductCategories(
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'iconImage') String? iconImage,
    @JsonKey(name: 'created') String? created,
    @JsonKey(name: 'modified') String? modified,
  ) = _ProductCategories;

  factory ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoriesFromJson(json);
}
