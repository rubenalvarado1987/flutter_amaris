import 'controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/account_page/account_page.dart';
import 'package:amaris_app/views/explore_screen/explore_screen.dart';
import 'package:amaris_app/views/favorites_page/favorites_page.dart';
import 'package:amaris_app/views/home_screen_container_page/home_screen_container_page.dart';
import 'package:amaris_app/views/my_cart_page/my_cart_page.dart';
import 'package:amaris_app/widgets/custom_bottom_bar.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CheckoutScreen extends GetWidget<CheckoutController> {
  const CheckoutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCheckoutButtonSection(),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: _buildPromoCode(
              promoCode: "lbl_delivery".tr,
              pickDiscount: "lbl_select_method".tr,
            ),
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
            indent: 25.h,
            endIndent: 24.h,
          ),
          SizedBox(height: 10.v),
          _buildPaymentSection(),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
            indent: 25.h,
            endIndent: 24.h,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: _buildPromoCode(
              promoCode: "lbl_promo_code".tr,
              pickDiscount: "lbl_pick_discount".tr,
            ),
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
            indent: 25.h,
            endIndent: 24.h,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: _buildPromoCode(
              promoCode: "lbl_total_cost".tr,
              pickDiscount: "lbl_13_97".tr,
            ),
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
            indent: 25.h,
            endIndent: 24.h,
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 236.h,
              margin: EdgeInsets.only(left: 25.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_by_placing_an_order2".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "lbl_terms".tr,
                      style: CustomTextStyles.titleSmallOnPrimary,
                    ),
                    TextSpan(
                      text: "lbl_and2".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "lbl_conditions".tr,
                      style: CustomTextStyles.titleSmallOnPrimary,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(height: 27.v),
          CustomElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.orderAcceptedScreen);
            },
            text: "lbl_place_order".tr,
            margin: EdgeInsets.symmetric(horizontal: 24.h),
          ),
          SizedBox(height: 27.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalCostSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 25.h,
          top: 98.v,
          right: 25.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
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
                    price: "lbl_4_99".tr,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.v),
            Divider(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckoutSection() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 24.h,
          bottom: 116.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(),
            SizedBox(height: 26.v),
            Row(
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
                          actionText: "lbl_organic_bananas".tr,
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
                                  decoration:
                                      IconButtonStyleHelper.outlineGrayTL17,
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
            SizedBox(height: 29.v),
            Divider(),
            SizedBox(height: 26.v),
            Row(
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
                    price: "lbl_2_99".tr,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.v),
            Container(
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEggChickenRedSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(13.h, 255.v, 25.h, 506.v),
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
                  actionText: "lbl_egg_chicken_red".tr,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckoutButtonSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_checkout".tr,
            style: theme.textTheme.headlineSmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseOnprimary,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_pament".tr,
            style: CustomTextStyles.titleMediumGray60001,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup6868,
            height: 16.v,
            width: 45.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildH({required String actionText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          actionText,
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
    );
  }

  /// Common widget
  Widget _buildH1({
    required String h,
    required String h1,
    required String h2,
    required String price,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
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
                    price,
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

  /// Common widget
  Widget _buildPromoCode({
    required String promoCode,
    required String pickDiscount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          promoCode,
          style: CustomTextStyles.titleMediumGray60001.copyWith(
            color: appTheme.gray60001,
          ),
        ),
        Spacer(),
        Text(
          pickDiscount,
          style: CustomTextStyles.titleMedium16.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBackArrow,
          height: 14.v,
          width: 8.h,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 4.v,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Shop:
        return AppRoutes.homeScreenContainerPage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreScreen;
      case BottomBarEnum.Cart:
        return AppRoutes.myCartPage;
      case BottomBarEnum.Favourite:
        return AppRoutes.favoritesPage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
      case AppRoutes.exploreScreen:
        return ExploreScreen();
      case AppRoutes.myCartPage:
        return MyCartPage();
      case AppRoutes.favoritesPage:
        return FavoritesPage();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
