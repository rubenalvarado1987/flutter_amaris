import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/sing_in_screen/models/sing_in_model.dart';

/// A controller class for the SingInScreen.
///
/// This class manages the state of the SingInScreen, including the
/// current singInModelObj
class SingInController extends GetxController {
  Rx<SingInModel> singInModelObj = SingInModel().obs;
}
