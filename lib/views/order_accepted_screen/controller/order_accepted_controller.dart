import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/order_accepted_screen/models/order_accepted_model.dart';

/// A controller class for the OrderAcceptedScreen.
///
/// This class manages the state of the OrderAcceptedScreen, including the
/// current orderAcceptedModelObj
class OrderAcceptedController extends GetxController {
  Rx<OrderAcceptedModel> orderAcceptedModelObj = OrderAcceptedModel().obs;
}
