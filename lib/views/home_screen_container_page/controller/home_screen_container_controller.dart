import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/home_screen_container_page/models/home_screen_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreenContainerPage.
///
/// This class manages the state of the HomeScreenContainerPage, including the
/// current homeScreenContainerModelObj
class HomeScreenContainerController extends GetxController {
  HomeScreenContainerController(this.homeScreenContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeScreenContainerModel> homeScreenContainerModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
