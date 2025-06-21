// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponseModel _$SignInResponseModelFromJson(Map<String, dynamic> json) =>
    SignInResponseModel(
      isAuthenticated: json['isAuthuntecated'] as bool,
      message: json['message'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
      token: json['token'] as String,
      expiresOn: json['expiresOn'] as String,
      refreshTokenExpiration: json['refreshTokenExpiration'] as String?,
      statusCode: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$SignInResponseModelToJson(
        SignInResponseModel instance) =>
    <String, dynamic>{
      'isAuthuntecated': instance.isAuthenticated,
      'message': instance.message,
      'userName': instance.userName,
      'email': instance.email,
      'roles': instance.roles,
      'token': instance.token,
      'expiresOn': instance.expiresOn,
      'refreshTokenExpiration': instance.refreshTokenExpiration,
      'status': instance.statusCode,
    };
