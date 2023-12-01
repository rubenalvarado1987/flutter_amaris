import '../controller/order_accepted_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderAcceptedScreen.
///
/// This class ensures that the OrderAcceptedController is created when the
/// OrderAcceptedScreen is first loaded.
class OrderAcceptedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderAcceptedController());
  }
}
