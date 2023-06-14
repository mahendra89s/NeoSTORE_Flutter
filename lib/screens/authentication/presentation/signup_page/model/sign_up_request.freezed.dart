// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) {
  return _SignUpRequest.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequest {
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirm_password => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  int? get phone_no => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) then) =
      _$SignUpRequestCopyWithImpl<$Res, SignUpRequest>;
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
      String? email,
      String? password,
      String? confirm_password,
      String? gender,
      int? phone_no});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res, $Val extends SignUpRequest>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirm_password = freezed,
    Object? gender = freezed,
    Object? phone_no = freezed,
  }) {
    return _then(_value.copyWith(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirm_password: freezed == confirm_password
          ? _value.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_no: freezed == phone_no
          ? _value.phone_no
          : phone_no // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$$_SignUpRequestCopyWith(
          _$_SignUpRequest value, $Res Function(_$_SignUpRequest) then) =
      __$$_SignUpRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
      String? email,
      String? password,
      String? confirm_password,
      String? gender,
      int? phone_no});
}

/// @nodoc
class __$$_SignUpRequestCopyWithImpl<$Res>
    extends _$SignUpRequestCopyWithImpl<$Res, _$_SignUpRequest>
    implements _$$_SignUpRequestCopyWith<$Res> {
  __$$_SignUpRequestCopyWithImpl(
      _$_SignUpRequest _value, $Res Function(_$_SignUpRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirm_password = freezed,
    Object? gender = freezed,
    Object? phone_no = freezed,
  }) {
    return _then(_$_SignUpRequest(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirm_password: freezed == confirm_password
          ? _value.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_no: freezed == phone_no
          ? _value.phone_no
          : phone_no // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpRequest with DiagnosticableTreeMixin implements _SignUpRequest {
  const _$_SignUpRequest(
      {required this.first_name,
      required this.last_name,
      required this.email,
      required this.password,
      required this.confirm_password,
      required this.gender,
      required this.phone_no});

  factory _$_SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpRequestFromJson(json);

  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirm_password;
  @override
  final String? gender;
  @override
  final int? phone_no;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpRequest(first_name: $first_name, last_name: $last_name, email: $email, password: $password, confirm_password: $confirm_password, gender: $gender, phone_no: $phone_no)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpRequest'))
      ..add(DiagnosticsProperty('first_name', first_name))
      ..add(DiagnosticsProperty('last_name', last_name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirm_password', confirm_password))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('phone_no', phone_no));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpRequest &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirm_password, confirm_password) ||
                other.confirm_password == confirm_password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone_no, phone_no) ||
                other.phone_no == phone_no));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name, email,
      password, confirm_password, gender, phone_no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpRequestCopyWith<_$_SignUpRequest> get copyWith =>
      __$$_SignUpRequestCopyWithImpl<_$_SignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpRequestToJson(
      this,
    );
  }
}

abstract class _SignUpRequest implements SignUpRequest {
  const factory _SignUpRequest(
      {required final String? first_name,
      required final String? last_name,
      required final String? email,
      required final String? password,
      required final String? confirm_password,
      required final String? gender,
      required final int? phone_no}) = _$_SignUpRequest;

  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =
      _$_SignUpRequest.fromJson;

  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get confirm_password;
  @override
  String? get gender;
  @override
  int? get phone_no;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpRequestCopyWith<_$_SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
