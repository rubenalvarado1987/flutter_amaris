import 'controller/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:amaris_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amaris_app/widgets/app_bar/custom_app_bar.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';
import 'package:amaris_app/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductDetailScreen extends GetWidget<ProductDetailController> {
  const ProductDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBackArrow(),
              _buildProductDetail(),
            ],
          ),
        ),
        bottomNavigationBar: _buildAddToBasket(),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackArrow() {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 21.v),
        decoration: AppDecoration.fillGray100.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(
              height: 18.v,
              leadingWidth: 35.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgFrame,
                margin: EdgeInsets.only(left: 25.h),
              ),
              actions: [
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgUpload,
                  margin: EdgeInsets.symmetric(horizontal: 26.h),
                ),
              ],
            ),
            SizedBox(height: 27.v),
            SizedBox(
              height: 237.v,
              width: 329.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 205.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 4,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.gray40001,
                          dotHeight: 3.v,
                          dotWidth: 3.h,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPngfuel11,
                      height: 171.v,
                      width: 295.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 6.h,
                        bottom: 25.v,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector199x329,
                    height: 199.v,
                    width: 329.h,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetail() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 21.v,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "msg_naturel_red_apple".tr,
                style: CustomTextStyles.headlineSmallGilroyBold,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBookmark1,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 3.v),
              ),
            ],
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_1kg_price".tr,
              style: CustomTextStyles.titleMediumGray6000116,
            ),
          ),
          SizedBox(height: 29.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorGray40001,
                height: 2.v,
                width: 17.h,
                margin: EdgeInsets.symmetric(vertical: 21.v),
              ),
              CustomOutlinedButton(
                width: 45.h,
                text: "lbl_1".tr,
                margin: EdgeInsets.only(left: 20.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPlus,
                height: 17.adaptSize,
                width: 17.adaptSize,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 14.v,
                  bottom: 14.v,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 6.v,
                  bottom: 9.v,
                ),
                child: Text(
                  "lbl_4_99".tr,
                  style: CustomTextStyles.headlineSmallGilroyBold,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 94.v,
            width: 358.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_product_detail".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                        SizedBox(height: 11.v),
                        SizedBox(
                          width: 356.h,
                          child: Text(
                            "msg_apples_are_nutritious".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMedium13.copyWith(
                              height: 1.62,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 8.v,
                  width: 14.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 7.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "lbl_nutritions".tr,
                  style: CustomTextStyles.titleMedium16,
                ),
                Spacer(),
                SizedBox(
                  height: 18.v,
                  width: 33.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup102,
                        height: 18.v,
                        width: 33.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Text(
                            "lbl_100gr".tr,
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorOnprimary,
                  height: 14.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Divider(
            color: appTheme.gray30001.withOpacity(0.7),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "lbl_review".tr,
                  style: CustomTextStyles.titleMedium16,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup6834,
                  height: 14.v,
                  width: 92.h,
                  margin: EdgeInsets.only(top: 4.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorOnprimary,
                  height: 14.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    top: 5.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToBasket() {
    return CustomElevatedButton(
      text: "lbl_add_to_basket".tr,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 38.v,
      ),
    );
  }
}
