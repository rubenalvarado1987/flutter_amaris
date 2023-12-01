import '../controller/filters_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FiltersScreen.
///
/// This class ensures that the FiltersController is created when the
/// FiltersScreen is first loaded.
class FiltersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FiltersController());
  }
}
