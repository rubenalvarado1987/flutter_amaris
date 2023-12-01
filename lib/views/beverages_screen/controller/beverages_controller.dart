import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/beverages_screen/models/beverages_model.dart';

/// A controller class for the BeveragesScreen.
///
/// This class manages the state of the BeveragesScreen, including the
/// current beveragesModelObj
class BeveragesController extends GetxController {
  Rx<BeveragesModel> beveragesModelObj = BeveragesModel().obs;
}
