import 'package:flutter/material.dart';
import 'package:dietosurelabs/app_config.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var formKey = GlobalKey<FormState>();

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool obscureText = true;
  bool _rememberLogin = false;

  bool get isObscureText => obscureText;
  bool get isRememberLogin => _rememberLogin;

  void togglePassword() {
    obscureText = !obscureText;
    update();
  }

  void login() {
    Get.offAndToNamed(routeName.fullApp);
  }
}
