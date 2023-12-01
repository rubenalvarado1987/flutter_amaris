import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/account_page/models/account_model.dart';

/// A controller class for the AccountPage.
///
/// This class manages the state of the AccountPage, including the
/// current accountModelObj
class AccountController extends GetxController {
  AccountController(this.accountModelObj);

  Rx<AccountModel> accountModelObj;
}
