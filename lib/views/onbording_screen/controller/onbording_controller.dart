import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/onbording_screen/models/onbording_model.dart';

/// A controller class for the OnbordingScreen.
///
/// This class manages the state of the OnbordingScreen, including the
/// current onbordingModelObj
class OnbordingController extends GetxController {
  Rx<OnbordingModel> onbordingModelObj = OnbordingModel().obs;
}
