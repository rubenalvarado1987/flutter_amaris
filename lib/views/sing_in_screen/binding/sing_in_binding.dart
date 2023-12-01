import '../controller/sing_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SingInScreen.
///
/// This class ensures that the SingInController is created when the
/// SingInScreen is first loaded.
class SingInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingInController());
  }
}
