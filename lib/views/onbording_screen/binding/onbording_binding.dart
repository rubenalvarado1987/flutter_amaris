import '../controller/onbording_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnbordingScreen.
///
/// This class ensures that the OnbordingController is created when the
/// OnbordingScreen is first loaded.
class OnbordingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingController());
  }
}
