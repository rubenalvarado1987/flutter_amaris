import '../controller/select_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectLocationScreen.
///
/// This class ensures that the SelectLocationController is created when the
/// SelectLocationScreen is first loaded.
class SelectLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectLocationController());
  }
}
