import '../../../core/app_export.dart';
import 'search_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<SearchItemModel>> searchItemList = Rx([
    SearchItemModel(
        h: "Egg Chicken Red".obs,
        eggChickenRed: ImageConstant.imgPngfuel15.obs,
        eggChickenRed1: ImageConstant.imgPngfuel16.obs,
        h1: "4pcs, Price".obs,
        price: "1.99".obs)
  ]);
}
