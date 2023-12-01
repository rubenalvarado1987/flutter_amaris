import 'controller/error_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ErrorDialog extends StatelessWidget {
  ErrorDialog(this.controller, {Key? key}) : super(key: key);

  ErrorController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 364.h,
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 22.v),
        decoration: AppDecoration.fillWhiteA70001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder19),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              CustomImageView(
                  imagePath: ImageConstant.imgCloseOnprimary,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    onTapImgClose();
                  }),
              SizedBox(height: 18.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage13,
                  height: 221.v,
                  width: 222.h),
              SizedBox(height: 49.v),
              Text("msg_oops_order_failed".tr,
                  style: CustomTextStyles.headlineMedium28),
              SizedBox(height: 19.v),
              Text("msg_something_went_tembly".tr,
                  style: CustomTextStyles.bodyLargeGilroyMediumGray60001),
              SizedBox(height: 63.v),
              CustomElevatedButton(text: "msg_please_try_again".tr),
              SizedBox(height: 20.v),
              Text("lbl_back_to_home".tr, style: CustomTextStyles.titleMedium_1)
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
