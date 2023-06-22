// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModelResponse _$UserModelResponseFromJson(Map<String, dynamic> json) {
  return _UserModelResponse.fromJson(json);
}

/// @nodoc
mixin _$UserModelResponse {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_msg')
  String? get userMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UserModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelResponseCopyWith<UserModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelResponseCopyWith<$Res> {
  factory $UserModelResponseCopyWith(
          UserModelResponse value, $Res Function(UserModelResponse) then) =
      _$UserModelResponseCopyWithImpl<$Res, UserModelResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user_msg') String? userMsg,
      @JsonKey(name: 'data') UserModel? data});

  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserModelResponseCopyWithImpl<$Res, $Val extends UserModelResponse>
    implements $UserModelResponseCopyWith<$Res> {
  _$UserModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? userMsg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userMsg: freezed == userMsg
          ? _value.userMsg
          : userMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelResponseCopyWith<$Res>
    implements $UserModelResponseCopyWith<$Res> {
  factory _$$_UserModelResponseCopyWith(_$_UserModelResponse value,
          $Res Function(_$_UserModelResponse) then) =
      __$$_UserModelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user_msg') String? userMsg,
      @JsonKey(name: 'data') UserModel? data});

  @override
  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_UserModelResponseCopyWithImpl<$Res>
    extends _$UserModelResponseCopyWithImpl<$Res, _$_UserModelResponse>
    implements _$$_UserModelResponseCopyWith<$Res> {
  __$$_UserModelResponseCopyWithImpl(
      _$_UserModelResponse _value, $Res Function(_$_UserModelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? userMsg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UserModelResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userMsg: freezed == userMsg
          ? _value.userMsg
          : userMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModelResponse implements _UserModelResponse {
  const _$_UserModelResponse(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'user_msg') this.userMsg,
      @JsonKey(name: 'data') this.data});

  factory _$_UserModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'user_msg')
  final String? userMsg;
  @override
  @JsonKey(name: 'data')
  final UserModel? data;

  @override
  String toString() {
    return 'UserModelResponse(status: $status, message: $message, userMsg: $userMsg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModelResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userMsg, userMsg) || other.userMsg == userMsg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, userMsg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelResponseCopyWith<_$_UserModelResponse> get copyWith =>
      __$$_UserModelResponseCopyWithImpl<_$_UserModelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelResponseToJson(
      this,
    );
  }
}

abstract class _UserModelResponse implements UserModelResponse {
  const factory _UserModelResponse(
      {@JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'user_msg') final String? userMsg,
      @JsonKey(name: 'data') final UserModel? data}) = _$_UserModelResponse;

  factory _UserModelResponse.fromJson(Map<String, dynamic> json) =
      _$_UserModelResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'user_msg')
  String? get userMsg;
  @override
  @JsonKey(name: 'data')
  UserModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelResponseCopyWith<_$_UserModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
