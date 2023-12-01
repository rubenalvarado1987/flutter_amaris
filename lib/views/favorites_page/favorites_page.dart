import 'controller/favorites_controller.dart';
import 'models/favorites_model.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';

class FavoritesPage extends StatelessWidget {
  FavoritesPage({Key? key})
      : super(
          key: key,
        );

  FavoritesController controller =
      Get.put(FavoritesController(FavoritesModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA70001,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.v),
            child: Column(
              children: [
                Text(
                  "lbl_favorurite".tr,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 31.v),
                Divider(),
                SizedBox(height: 29.v),
                _buildFavoriteItems(),
                SizedBox(height: 29.v),
                Divider(
                  indent: 25.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 30.v),
                _buildDietCokeItems(),
                SizedBox(height: 30.v),
                Divider(
                  indent: 25.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 28.v),
                _buildTreeTopJuiceItems(),
                SizedBox(height: 29.v),
                Divider(
                  indent: 25.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 29.v),
                _buildCocaColaItems(),
                SizedBox(height: 20.v),
                Divider(
                  indent: 25.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 27.v),
                _buildPepsiItems(),
                SizedBox(height: 18.v),
                Divider(),
                SizedBox(height: 50.v),
                CustomElevatedButton(
                  text: "lbl_add_all_to_cart".tr,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 25.h,
                  ),
                  buttonTextStyle: CustomTextStyles.titleMediumGray50,
                ),
                SizedBox(height: 8.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoriteItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel12,
            height: 54.v,
            width: 30.h,
          ),
          Spacer(
            flex: 23,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_sprite_can".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_325ml_price".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 76,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 20.v,
            ),
            child: Text(
              "lbl_1_50".tr,
              style: CustomTextStyles.titleMedium16_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 17.v,
              bottom: 23.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDietCokeItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel1189x44,
            height: 52.v,
            width: 26.h,
          ),
          Spacer(
            flex: 23,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 7.v),
            child: Column(
              children: [
                Text(
                  "lbl_diet_coke".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_355ml_price".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 76,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 19.v,
            ),
            child: Text(
              "lbl_1_99".tr,
              style: CustomTextStyles.titleMedium16_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 16.v,
              bottom: 22.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTreeTopJuiceItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTreeTopJuice,
            height: 55.adaptSize,
            width: 55.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              top: 4.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_apple_grape_juice2".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_2l_price".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 21.v,
            ),
            child: Text(
              "lbl_15_50".tr,
              style: CustomTextStyles.titleMedium16_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 17.v,
              bottom: 23.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCocaColaItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel13,
            height: 53.v,
            width: 28.h,
          ),
          Spacer(
            flex: 28,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_coca_cola_can".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_325ml_price".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 71,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 19.v,
            ),
            child: Text(
              "lbl_4_99".tr,
              style: CustomTextStyles.titleMedium16_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 17.v,
              bottom: 22.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPepsiItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel14,
            height: 58.v,
            width: 30.h,
          ),
          Spacer(
            flex: 22,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_pepsi_can".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_330ml_price".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 77,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 22.v,
            ),
            child: Text(
              "lbl_4_99".tr,
              style: CustomTextStyles.titleMedium16_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 19.v,
              bottom: 24.v,
            ),
          ),
        ],
      ),
    );
  }
}
