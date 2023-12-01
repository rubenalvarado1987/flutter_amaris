import '../../../core/app_export.dart';

/// This class is used in the [beverages_item_widget] screen.
class BeveragesItemModel {
  BeveragesItemModel({
    this.pngfuelTen,
    this.dietCoke,
    this.h,
    this.h1,
    this.price,
    this.id,
  }) {
    pngfuelTen = pngfuelTen ?? Rx(ImageConstant.imgPngfuel10);
    dietCoke = dietCoke ?? Rx(ImageConstant.imgPngfuel1189x44);
    h = h ?? Rx("Diet Coke");
    h1 = h1 ?? Rx("355ml, Price");
    price = price ?? Rx("1.99");
    id = id ?? Rx("");
  }

  Rx<String>? pngfuelTen;

  Rx<String>? dietCoke;

  Rx<String>? h;

  Rx<String>? h1;

  Rx<String>? price;

  Rx<String>? id;
}
