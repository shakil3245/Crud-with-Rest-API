// import 'dart:convert';
//
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class AuthController extends GetxController {
//   static String? _token;
//
//   static String? get token => _token;
//
//
//   Future<void> saveToken(String userToken) async {
//     SharedPreferences preference = await SharedPreferences.getInstance();
//     _token = userToken;
//     await preference.setString('crafty_token', userToken);
//   }
//
//
//   Future<void> getToken() async {
//     SharedPreferences preference = await SharedPreferences.getInstance();
//     _token = preference.getString('crud_token');
//   }
//
//
//
// }