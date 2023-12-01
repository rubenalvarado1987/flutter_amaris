import 'controller/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnbordingScreen extends GetWidget<OnbordingController> {
  const OnbordingScreen({Key? key})
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
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img81401,
                height: 895.v,
                width: 414.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 90.v,
                  ),
                  decoration: AppDecoration.gradientOnErrorContainerToGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 56.v,
                        width: 48.h,
                      ),
                      SizedBox(height: 16.v),
                      Container(
                        width: 253.h,
                        margin: EdgeInsets.symmetric(horizontal: 50.h),
                        child: Text(
                          "msg_welcome_to_our".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "msg_ger_your_groceries".tr,
                        style: CustomTextStyles.bodyLargeGilroyMediumGray50,
                      ),
                      SizedBox(height: 38.v),
                      CustomElevatedButton(
                        onPressed: () {
                          Get.offNamed(
                            AppRoutes.singInScreen,
                          );
                        },
                        text: "lbl_get_started".tr,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
