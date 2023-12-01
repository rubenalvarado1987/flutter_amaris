import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/number_screen/models/number_model.dart';

/// A controller class for the NumberScreen.
///
/// This class manages the state of the NumberScreen, including the
/// current numberModelObj
class NumberController extends GetxController {
  Rx<NumberModel> numberModelObj = NumberModel().obs;
  TextEditingController numberController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    numberController.dispose();
  }
}
