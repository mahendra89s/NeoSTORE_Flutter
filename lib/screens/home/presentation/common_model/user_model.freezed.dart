// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'user_data')
  LoginResponseData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_categories')
  List<ProductCategories>? get productCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_carts')
  int? get totalCarts => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_orders')
  int? get totalOrders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_data')
          LoginResponseData? data,
      @JsonKey(name: 'product_categories')
          List<ProductCategories>? productCategories,
      @JsonKey(name: 'total_carts')
          int? totalCarts,
      @JsonKey(name: 'total_orders')
          int? totalOrders});

  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? productCategories = freezed,
    Object? totalCarts = freezed,
    Object? totalOrders = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
      productCategories: freezed == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
      totalCarts: freezed == totalCarts
          ? _value.totalCarts
          : totalCarts // ignore: cast_nullable_to_non_nullable
              as int?,
      totalOrders: freezed == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_data')
          LoginResponseData? data,
      @JsonKey(name: 'product_categories')
          List<ProductCategories>? productCategories,
      @JsonKey(name: 'total_carts')
          int? totalCarts,
      @JsonKey(name: 'total_orders')
          int? totalOrders});

  @override
  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? productCategories = freezed,
    Object? totalCarts = freezed,
    Object? totalOrders = freezed,
  }) {
    return _then(_$_UserModel(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
      freezed == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategories>?,
      freezed == totalCarts
          ? _value.totalCarts
          : totalCarts // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      @JsonKey(name: 'user_data')
          this.data,
      @JsonKey(name: 'product_categories')
          final List<ProductCategories>? productCategories,
      @JsonKey(name: 'total_carts')
          this.totalCarts,
      @JsonKey(name: 'total_orders')
          this.totalOrders)
      : _productCategories = productCategories;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'user_data')
  final LoginResponseData? data;
  final List<ProductCategories>? _productCategories;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategories>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_carts')
  final int? totalCarts;
  @override
  @JsonKey(name: 'total_orders')
  final int? totalOrders;

  @override
  String toString() {
    return 'UserModel(data: $data, productCategories: $productCategories, totalCarts: $totalCarts, totalOrders: $totalOrders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._productCategories, _productCategories) &&
            (identical(other.totalCarts, totalCarts) ||
                other.totalCarts == totalCarts) &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(_productCategories),
      totalCarts,
      totalOrders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      @JsonKey(name: 'user_data')
          final LoginResponseData? data,
      @JsonKey(name: 'product_categories')
          final List<ProductCategories>? productCategories,
      @JsonKey(name: 'total_carts')
          final int? totalCarts,
      @JsonKey(name: 'total_orders')
          final int? totalOrders) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'user_data')
  LoginResponseData? get data;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategories>? get productCategories;
  @override
  @JsonKey(name: 'total_carts')
  int? get totalCarts;
  @override
  @JsonKey(name: 'total_orders')
  int? get totalOrders;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
