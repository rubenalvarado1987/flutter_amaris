import '../../../core/app_export.dart';

/// This class is used in the [homescreencontainer_item_widget] screen.
class HomescreencontainerItemModel {
  HomescreencontainerItemModel({
    this.bellPepperRed,
    this.h,
    this.h1,
    this.price,
    this.id,
  }) {
    bellPepperRed = bellPepperRed ?? Rx(ImageConstant.img92f1ea7dcce3b5d85x97);
    h = h ?? Rx("Bell Pepper Red");
    h1 = h1 ?? Rx("1kg, Priceg");
    price = price ?? Rx("4.99");
    id = id ?? Rx("");
  }

  Rx<String>? bellPepperRed;

  Rx<String>? h;

  Rx<String>? h1;

  Rx<String>? price;

  Rx<String>? id;
}
