import 'package:amaris_app/views/checkout_screen/checkout_screen.dart';

import 'controller/my_cart_controller.dart';
import 'models/my_cart_model.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

class MyCartPage extends StatelessWidget {
  MyCartPage({Key? key})
      : super(
          key: key,
        );

  MyCartController controller = Get.put(MyCartController(MyCartModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA70001,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 17.v),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "lbl_my_cart".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 29.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildMyCartImage(),
                  SizedBox(height: 30.v),
                  Divider(
                    indent: 25.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 20.v),
                  _buildChickenEggImage(),
                  SizedBox(height: 30.v),
                  Divider(
                    indent: 25.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 20.v),
                  _buildOrganicBananasImage(),
                  SizedBox(height: 29.v),
                  Divider(
                    indent: 25.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 20.v),
                  _buildGingerImage(),
                  SizedBox(height: 29.v),
                  Divider(
                    indent: 25.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 10.v),
                  _buildGoToCheckoutStack(context),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyCartImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img92f1ea7dcce3b5d64x70,
            height: 64.v,
            width: 70.h,
            margin: EdgeInsets.only(
              top: 18.v,
              bottom: 16.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: _buildH1(
              h: "lbl_bell_pepper_red".tr,
              h1: "lbl_1kg_price".tr,
              h2: "lbl_1".tr,
              priceText: "lbl_4_99".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChickenEggImage() {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel16,
            height: 86.adaptSize,
            width: 86.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 5.v,
            ),
          ),
          Column(
            children: [
              _buildH(
                userName: "lbl_egg_chicken_red".tr,
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_4pcs_price".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                width: 257.h,
                margin: EdgeInsets.only(right: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomIconButton(
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorGray40001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 15.v,
                        bottom: 11.v,
                      ),
                      child: Text(
                        "lbl_1".tr,
                        style: CustomTextStyles.titleMedium16_1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: CustomIconButton(
                        height: 45.adaptSize,
                        width: 45.adaptSize,
                        padding: EdgeInsets.all(14.h),
                        decoration: IconButtonStyleHelper.outlineGrayTL17,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 13.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "lbl_1_99".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrganicBananasImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img92f1ea7dcce3b5d,
            height: 54.v,
            width: 68.h,
            margin: EdgeInsets.only(
              top: 23.v,
              bottom: 21.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 33.h),
              child: Column(
                children: [
                  _buildH(
                    userName: "lbl_organic_bananas".tr,
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_12kg_price".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVectorGray40001,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 17.h,
                            top: 16.v,
                            bottom: 11.v,
                          ),
                          child: Text(
                            "lbl_1".tr,
                            style: CustomTextStyles.titleMedium16_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            decoration: IconButtonStyleHelper.outlineGrayTL17,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24.v),
                          child: Text(
                            "lbl_3_00".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGingerImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel3,
            height: 65.v,
            width: 72.h,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 18.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: _buildH1(
              h: "lbl_ginger".tr,
              h1: "lbl_250gm_price".tr,
              h2: "lbl_1".tr,
              priceText: "lbl_2_99".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoToCheckoutStack(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return CheckoutScreen();
            });
      },
      child: SizedBox(
        height: 67.v,
        width: 413.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 20.v),
                child: SizedBox(
                  width: 413.h,
                  child: Divider(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "lbl_go_to_checkout".tr,
                        style: CustomTextStyles.titleMediumGray50,
                      ),
                    ),
                    Container(
                      width: 43.h,
                      margin: EdgeInsets.only(
                        left: 50.h,
                        top: 1.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Text(
                        "lbl_12_96".tr,
                        style: CustomTextStyles.labelLargeGray50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildH({required String userName}) {
    return SizedBox(
      width: 260.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            userName,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseGray40001,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildH1({
    required String h,
    required String h1,
    required String h2,
    required String priceText,
  }) {
    return Expanded(
      child: SizedBox(
        width: 250.h,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  h,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseGray40001,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
              ],
            ),
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                h1,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray60001,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.outlineGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorGray40001,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 15.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    h2,
                    style: CustomTextStyles.titleMedium16_1.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: IconButtonStyleHelper.outlineGrayTL17,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlus,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    priceText,
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
