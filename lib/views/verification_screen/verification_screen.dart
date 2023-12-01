import '../../widgets/custom_text_form_field.dart';
import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                height: 861.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildMainOneStack(),
                        SizedBox(height: 3.v),
                        _buildTextStack(),
                        Spacer(),
                        _buildResendCodeRow(),
                        SizedBox(height: 38.v),
                        // _buildMainOneStack2()
                      ])),
                  // CustomImageView(
                  //     imagePath: ImageConstant.imgUbereatsV124611,
                  //     height: 300.v,
                  //     width: 413.h,
                  //     alignment: Alignment.bottomCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 18.v,
                          width: 177.h,
                          decoration: BoxDecoration(color: appTheme.gray300)))
                ]))));
  }

  /// Section Widget
  Widget _buildMainOneStack() {
    return SizedBox(
        height: 198.v,
        width: 413.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMain11,
              height: 198.v,
              width: 413.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v),
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
                            width: 10.h),
                        SizedBox(height: 64.v),
                        Text("msg_enter_your_4_digit".tr,
                            style: theme.textTheme.headlineMedium),
                        SizedBox(height: 28.v),
                        Text("lbl_code".tr,
                            style: CustomTextStyles.titleMediumGray6000116)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildTextStack() {
    return SizedBox(
      height: 39.v,
      width: 364.h,
      child: Stack(alignment: Alignment.topLeft, children: [
        Align(
            alignment: Alignment.center,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: CustomTextFormField(
                      hintText: "- - - - - -",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.phone,
                      borderDecoration: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                  // Padding(
                  //     padding: EdgeInsets.only(left: 3.h),
                  //     child: Text("lbl".tr,
                  //         style: CustomTextStyles.bodyLargeGilroyMedium)),
                  SizedBox(height: 15.v),
                  Divider()
                ])),
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 1.h),
        //     child: SizedBox(
        //       // width: 250.h,
        //       child: CustomTextFormField(
        //         autofocus: true,
        //         textInputAction: TextInputAction.done,
        //         textInputType: TextInputType.phone,
        //         borderDecoration: InputBorder.none,
        //         contentPadding: EdgeInsets.zero,
        //       ),
        //     ),
        //   ),
        // ),
      ]),
    );
  }

  /// Section Widget
  Widget _buildResendCodeRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20.v, bottom: 24.v),
                  child: Text("lbl_resend_code".tr,
                      style: CustomTextStyles.bodyLargeGilroyMediumPrimary)),
              CustomIconButton(
                  height: 67.adaptSize,
                  width: 67.adaptSize,
                  padding: EdgeInsets.all(24.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  onTap: () {
                    onTapBtnIconButton();
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrameWhiteA700))
            ]));
  }

  /// Section Widget
  Widget _buildMainOneStack2() {
    return SizedBox(
        height: 302.v,
        width: 413.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMain17,
              height: 167.v,
              width: 413.h,
              alignment: Alignment.bottomCenter),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle16302x413,
              height: 302.v,
              width: 413.h,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the selectLocationScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.selectLocationScreen,
    );
  }
}
