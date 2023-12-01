import '../controller/number_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NumberScreen.
///
/// This class ensures that the NumberController is created when the
/// NumberScreen is first loaded.
class NumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NumberController());
  }
}
