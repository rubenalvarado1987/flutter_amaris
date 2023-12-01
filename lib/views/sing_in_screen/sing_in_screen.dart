import 'controller/sing_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SingInScreen extends GetWidget<SingInController> {
  const SingInScreen({Key? key})
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
          height: 848.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildMainOneStack(),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 222.h,
                        margin: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "msg_get_your_groceries_with".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles
                              .headlineMediumOnPrimaryContainer
                              .copyWith(
                            height: 1.12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 31.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.numberScreen);
                          },
                          child: Row(
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
                                  style: CustomTextStyles
                                      .bodyLargeGilroyMediumOnPrimaryContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Divider(
                      indent: 24.h,
                      endIndent: 25.h,
                    ),
                    SizedBox(height: 35.v),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.logInScreen,
                          );
                        },
                        child: _buildContinueWithFacebookStack()),
                  ],
                ),
              ),
              _buildSixThousandElevenStack(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainOneStack() {
    return SizedBox(
      height: 185.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMain1,
            height: 185.v,
            width: 413.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle17,
            height: 185.v,
            width: 413.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithFacebookStack() {
    return SizedBox(
      height: 302.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMain1167x413,
            height: 167.v,
            width: 413.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillWhiteAC,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "msg_or_connect_with".tr,
                    style: CustomTextStyles.titleSmallGray60002,
                  ),
                  SizedBox(height: 38.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35.h,
                      vertical: 19.v,
                    ),
                    decoration: AppDecoration.fillBlueA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder19,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGoogle,
                          height: 24.v,
                          width: 22.h,
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 40.h,
                            top: 4.v,
                          ),
                          child: Text(
                            "msg_continue_with_google".tr,
                            style: CustomTextStyles.titleMediumGray50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                    onPressed: () {
                      Get.toNamed(
                        AppRoutes.logInScreen,
                      );
                    },
                    text: "msg_continue_with_facebook".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 30.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFacebook,
                        height: 24.v,
                        width: 11.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillIndigo,
                    buttonTextStyle: CustomTextStyles.titleMediumGray50,
                  ),
                  SizedBox(height: 88.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixThousandElevenStack() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 326.v,
        width: 413.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img6011,
              height: 326.v,
              width: 413.h,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLogo,
              height: 31.v,
              width: 75.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 54.h),
            ),
          ],
        ),
      ),
    );
  }
}
