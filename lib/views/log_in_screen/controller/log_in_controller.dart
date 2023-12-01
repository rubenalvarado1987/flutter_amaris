import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
