import '../../../core/app_export.dart';

/// This class is used in the [search_item_widget] screen.
class SearchItemModel {
  SearchItemModel({
    this.h,
    this.eggChickenRed,
    this.eggChickenRed1,
    this.h1,
    this.price,
    this.id,
  }) {
    h = h ?? Rx("Egg Chicken Red");
    eggChickenRed = eggChickenRed ?? Rx(ImageConstant.imgPngfuel15);
    eggChickenRed1 = eggChickenRed1 ?? Rx(ImageConstant.imgPngfuel16);
    h1 = h1 ?? Rx("4pcs, Price");
    price = price ?? Rx("1.99");
    id = id ?? Rx("");
  }

  Rx<String>? h;

  Rx<String>? eggChickenRed;

  Rx<String>? eggChickenRed1;

  Rx<String>? h1;

  Rx<String>? price;

  Rx<String>? id;
}
