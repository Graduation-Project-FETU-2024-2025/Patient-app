import 'package:json_annotation/json_annotation.dart';
part 'sign_in_response_model.g.dart';

@JsonSerializable()
class SignInResponseModel {
  @JsonKey(name: 'isAuthuntecated')
  final bool isAuthenticated;
  final String message;
  final String userName;
  final String email;
  final List<String> roles;
  final String token;
  final String expiresOn;
  final String? refreshTokenExpiration;
  @JsonKey(name: 'status')
  final int statusCode;

  SignInResponseModel({required this.isAuthenticated, required this.message, required this.userName, required this.email, required this.roles, required this.token, required this.expiresOn, required this.refreshTokenExpiration, required this.statusCode});


  factory SignInResponseModel.fromJson(Map<String, dynamic> json) => _$SignInResponseModelFromJson(json);
}
