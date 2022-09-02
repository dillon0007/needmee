import 'package:needme/constants/error_handling.dart';
import 'package:needme/constants/global_variables.dart';
import 'package:needme/constants/utils.dart';
import 'package:needme/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //sigup user

  void signUpUser({
    required String email,
    required BuildContext context,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');

      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(
              context,
              'Account created!! We need to login with the same credentials',
            );
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
