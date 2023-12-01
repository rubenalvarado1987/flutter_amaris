import '../../../core/app_export.dart';
import 'homescreencontainer_item_model.dart';
import 'homescreencontainer1_item_model.dart';

/// This class defines the variables used in the [home_screen_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenContainerModel {
  Rx<List<HomescreencontainerItemModel>> homescreencontainerItemList = Rx([
    HomescreencontainerItemModel(
        bellPepperRed: ImageConstant.img92f1ea7dcce3b5d85x97.obs,
        h: "Bell Pepper Red".obs,
        h1: "1kg, Priceg".obs,
        price: "4.99".obs),
    HomescreencontainerItemModel(
        bellPepperRed: ImageConstant.imgPngfuel3.obs,
        h: "Ginger".obs,
        h1: "250gm, Priceg".obs,
        price: "4.99".obs),
    HomescreencontainerItemModel(
        h: "Organic Bananas".obs, h1: "1kg, Priceg".obs, price: "4.99".obs)
  ]);

  Rx<List<HomescreencontainerItemModel>> exclusiveOfferList = Rx([
    HomescreencontainerItemModel(
        bellPepperRed: ImageConstant.img92f1ea7dcce3b5d.obs,
        h: "lbl_organic_bananas".tr.obs,
        h1: "lbl_7pcs_priceg".tr.obs,
        price: "4.99".obs),
    HomescreencontainerItemModel(
        bellPepperRed: ImageConstant.imgPngfuel1.obs,
        h: "lbl_red_apple".tr.obs,
        h1: "lbl_1kg_priceg".tr.obs,
        price: "4.99".obs),
    HomescreencontainerItemModel(
        h: "Organic Bananas".obs, h1: "1kg, Priceg".obs, price: "4.99".obs)
  ]);

  Rx<List<Homescreencontainer1ItemModel>> homescreencontainer1ItemList = Rx([
    Homescreencontainer1ItemModel(
        pulses: ImageConstant.img4215936Pulses.obs, pulses1: "Pulses".obs),
    Homescreencontainer1ItemModel(
        pulses: ImageConstant.img882858Downloa.obs, pulses1: "Rice".obs),
    Homescreencontainer1ItemModel(
        pulses: ImageConstant.img882858Downloa.obs, pulses1: "Rice".obs),
    Homescreencontainer1ItemModel(
        pulses: ImageConstant.img4215936Pulses.obs, pulses1: "Pulses".obs)
  ]);
}
