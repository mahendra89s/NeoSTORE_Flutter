// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategories _$ProductCategoriesFromJson(Map<String, dynamic> json) {
  return _ProductCategories.fromJson(json);
}

/// @nodoc
mixin _$ProductCategories {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_image')
  String? get iconImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  String? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified')
  String? get modified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoriesCopyWith<ProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoriesCopyWith<$Res> {
  factory $ProductCategoriesCopyWith(
          ProductCategories value, $Res Function(ProductCategories) then) =
      _$ProductCategoriesCopyWithImpl<$Res, ProductCategories>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'icon_image') String? iconImage,
      @JsonKey(name: 'created') String? created,
      @JsonKey(name: 'modified') String? modified});
}

/// @nodoc
class _$ProductCategoriesCopyWithImpl<$Res, $Val extends ProductCategories>
    implements $ProductCategoriesCopyWith<$Res> {
  _$ProductCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconImage = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCategoriesCopyWith<$Res>
    implements $ProductCategoriesCopyWith<$Res> {
  factory _$$_ProductCategoriesCopyWith(_$_ProductCategories value,
          $Res Function(_$_ProductCategories) then) =
      __$$_ProductCategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'icon_image') String? iconImage,
      @JsonKey(name: 'created') String? created,
      @JsonKey(name: 'modified') String? modified});
}

/// @nodoc
class __$$_ProductCategoriesCopyWithImpl<$Res>
    extends _$ProductCategoriesCopyWithImpl<$Res, _$_ProductCategories>
    implements _$$_ProductCategoriesCopyWith<$Res> {
  __$$_ProductCategoriesCopyWithImpl(
      _$_ProductCategories _value, $Res Function(_$_ProductCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconImage = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_$_ProductCategories(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategories implements _ProductCategories {
  const _$_ProductCategories(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'icon_image') this.iconImage,
      @JsonKey(name: 'created') this.created,
      @JsonKey(name: 'modified') this.modified);

  factory _$_ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoriesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'icon_image')
  final String? iconImage;
  @override
  @JsonKey(name: 'created')
  final String? created;
  @override
  @JsonKey(name: 'modified')
  final String? modified;

  @override
  String toString() {
    return 'ProductCategories(id: $id, name: $name, iconImage: $iconImage, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategories &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconImage, iconImage) ||
                other.iconImage == iconImage) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, iconImage, created, modified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCategoriesCopyWith<_$_ProductCategories> get copyWith =>
      __$$_ProductCategoriesCopyWithImpl<_$_ProductCategories>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoriesToJson(
      this,
    );
  }
}

abstract class _ProductCategories implements ProductCategories {
  const factory _ProductCategories(
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'icon_image') final String? iconImage,
      @JsonKey(name: 'created') final String? created,
      @JsonKey(name: 'modified') final String? modified) = _$_ProductCategories;

  factory _ProductCategories.fromJson(Map<String, dynamic> json) =
      _$_ProductCategories.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'icon_image')
  String? get iconImage;
  @override
  @JsonKey(name: 'created')
  String? get created;
  @override
  @JsonKey(name: 'modified')
  String? get modified;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoriesCopyWith<_$_ProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}
