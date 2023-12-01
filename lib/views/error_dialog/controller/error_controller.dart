import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/error_dialog/models/error_model.dart';

/// A controller class for the ErrorDialog.
///
/// This class manages the state of the ErrorDialog, including the
/// current errorModelObj
class ErrorController extends GetxController {
  Rx<ErrorModel> errorModelObj = ErrorModel().obs;
}
