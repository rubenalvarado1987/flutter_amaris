import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/filters_screen/models/filters_model.dart';

/// A controller class for the FiltersScreen.
///
/// This class manages the state of the FiltersScreen, including the
/// current filtersModelObj
class FiltersController extends GetxController {
  Rx<FiltersModel> filtersModelObj = FiltersModel().obs;

  Rx<bool> noodlesPasta = false.obs;

  Rx<bool> chipsCrisps = false.obs;

  Rx<bool> fastFood = false.obs;

  Rx<bool> individualCallection = false.obs;

  Rx<bool> ifad = false.obs;

  Rx<bool> kaziFarmas = false.obs;
}
