import '../controller/beverages_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BeveragesScreen.
///
/// This class ensures that the BeveragesController is created when the
/// BeveragesScreen is first loaded.
class BeveragesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BeveragesController());
  }
}
