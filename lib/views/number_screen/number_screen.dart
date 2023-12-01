import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/number_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class NumberScreen extends GetWidget<NumberController> {
  const NumberScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          height: 861.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildMainOneStack(),
                    SizedBox(height: 3.v),
                    _buildEightHundredEightyStack(),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 24.h),
                      child: CustomIconButton(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.verificationScreen,
                          );
                        },
                        height: 67.adaptSize,
                        width: 67.adaptSize,
                        padding: EdgeInsets.all(24.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        alignment: Alignment.centerRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrameWhiteA700,
                        ),
                      ),
                    ),
                    SizedBox(height: 28.v),
                    // GestureDetector(
                    //     onTap: () {
                    //       Get.offNamed(
                    //         AppRoutes.verificationScreen,
                    //       );
                    //     },
                    //     child: _buildMainOneStack1()),
                  ],
                ),
              ),
              // CustomImageView(
              //   imagePath: ImageConstant.imgUbereatsV124611,
              //   height: 300.v,
              //   width: 413.h,
              //   alignment: Alignment.bottomCenter,
              // ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 18.v,
                  width: 177.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainOneStack() {
    return SizedBox(
      height: 198.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMain1198x413,
            height: 198.v,
            width: 413.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillGray50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 8.v),
                  CustomImageView(
                    onTap: () {
                      Get.back();
                    },
                    imagePath: ImageConstant.imgFrame,
                    height: 18.v,
                    width: 10.h,
                  ),
                  SizedBox(height: 64.v),
                  Text(
                    "msg_enter_your_mobile".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "lbl_mobile_number".tr,
                    style: CustomTextStyles.titleMediumGray6000116,
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
  Widget _buildEightHundredEightyStack() {
    return SizedBox(
      height: 39.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle11,
                      height: 23.v,
                      width: 33.h,
                      radius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_880".tr,
                        style: CustomTextStyles.bodyLargeGilroyMedium,
                      ),
                    ),
                    SizedBox(
                      width: 250.h,
                      child: CustomTextFormField(
                        controller: controller.numberController,
                        // autofocus: true,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
                        borderDecoration: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.v),
                Divider(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 89.h),
              child: SizedBox(
                height: 22.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  color: appTheme.gray60001,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainOneStack1() {
    return SizedBox(
      height: 302.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMain16,
            height: 167.v,
            width: 413.h,
            alignment: Alignment.bottomCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle16,
            height: 302.v,
            width: 413.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
