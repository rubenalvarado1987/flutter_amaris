import '../../../core/app_export.dart';
import 'beverages_item_model.dart';

/// This class defines the variables used in the [beverages_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BeveragesModel {
  Rx<List<BeveragesItemModel>> beveragesItemList = Rx([
    BeveragesItemModel(
        pngfuelTen: ImageConstant.imgPngfuel10.obs,
        dietCoke: ImageConstant.imgPngfuel1189x44.obs,
        h: "Diet Coke".obs,
        h1: "355ml, Price".obs,
        price: "1.99".obs),
    BeveragesItemModel(
        pngfuelTen: ImageConstant.imgPngfuel1279x41.obs,
        dietCoke: ImageConstant.imgPngfuel13.obs,
        h: "Coca Cola Can".obs,
        h1: "325ml, Price".obs,
        price: "4.99".obs),
    BeveragesItemModel(
        pngfuelTen: ImageConstant.imgPngfuel1387x36.obs,
        dietCoke: ImageConstant.imgPngfuel14.obs,
        h: "Pepsi Can ".obs,
        h1: "330ml, Price".obs,
        price: "4.99".obs),
    BeveragesItemModel(
        h: "Apple & Grape \nJuice".obs,
        h1: "2L, Price".obs,
        price: "15.99".obs),
    BeveragesItemModel(
        h: "Orenge Juice".obs, h1: "2L, Price".obs, price: "15.99".obs)
  ]);
}
