import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/core/utils/validation_functions.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';
import 'package:amaris_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: appTheme.whiteA70001.withOpacity(0.54),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMainOne(),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.titleMediumGray6000116,
                  ),
                ),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 25.h,
                  ),
                  child: CustomTextFormField(
                    controller: controller.emailController,
                    hintText: "msg_example_gmail_com".tr,
                    hintStyle: CustomTextStyles.bodyLargeGilroyMedium,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    alignment: Alignment.center,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.titleMediumGray6000116,
                  ),
                ),
                SizedBox(height: 20.v),
                _buildVector(),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 25.h),
                    child: Text(
                      "msg_forgot_password".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                _buildLogIn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainOne() {
    return SizedBox(
      height: 267.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMain14,
            height: 198.v,
            width: 413.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillGray50,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 34.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupDeepOrangeA200,
                    height: 55.v,
                    width: 47.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 99.v),
                  Text(
                    "lbl_loging".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "msg_enter_your_emails".tr,
                    style: CustomTextStyles.bodyLargeGilroyMediumGray60001,
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
  Widget _buildVector() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 34.v,
        width: 364.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup6803,
              height: 28.v,
              width: 364.h,
              alignment: Alignment.bottomCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 18.v,
              width: 19.h,
              alignment: Alignment.topRight,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogIn() {
    return SizedBox(
      height: 312.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 302.v,
              width: 413.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMain15,
                    height: 167.v,
                    width: 413.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 92.h,
                        vertical: 80.v,
                      ),
                      decoration: AppDecoration.fillWhiteAC,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_don_t_have_an_account2".tr,
                              style: CustomTextStyles.titleSmallOnPrimary_1,
                            ),
                            TextSpan(
                              text: "lbl_singup".tr,
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.signUpScreen);
            },
            width: 364.h,
            text: "lbl_log_in".tr,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
