import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/select_location_screen/models/select_location_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectLocationScreen.
///
/// This class manages the state of the SelectLocationScreen, including the
/// current selectLocationModelObj
class SelectLocationController extends GetxController {
  TextEditingController locationController = TextEditingController();

  Rx<SelectLocationModel> selectLocationModelObj = SelectLocationModel().obs;

  @override
  void onClose() {
    super.onClose();
    locationController.dispose();
  }
}
