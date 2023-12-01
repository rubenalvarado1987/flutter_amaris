import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/explore_screen/models/explore_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ExploreScreen.
///
/// This class manages the state of the ExploreScreen, including the
/// current exploreModelObj
class ExploreController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ExploreModel> exploreModelObj = ExploreModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
