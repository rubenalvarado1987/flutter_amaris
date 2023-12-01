import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/core/utils/validation_functions.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';
import 'package:amaris_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
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
        backgroundColor: appTheme.gray50,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMainOneStack(),
                SizedBox(height: 41.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_username".tr,
                    style: CustomTextStyles.titleMediumGray6000116,
                  ),
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "vihaan",
                    style: CustomTextStyles
                        .bodyLargeGilroyMediumOnPrimaryContainer,
                  ),
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    indent: 24.h,
                    endIndent: 25.h,
                  ),
                ),
                SizedBox(height: 32.v),
                _buildEmailStack(),
                SizedBox(height: 32.v),
                _buildSignUpStack(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainOneStack() {
    return SizedBox(
      height: 259.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 198.v,
              width: 413.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMain14,
                    height: 198.v,
                    width: 413.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 182.h,
                        vertical: 42.v,
                      ),
                      decoration: AppDecoration.fillGray50,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 57.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroupDeepOrangeA200,
                            height: 55.v,
                            width: 47.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_sign_up".tr,
                    style: CustomTextStyles.headlineMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "msg_enter_your_credentials".tr,
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
  Widget _buildEmailStack() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 80.v,
        width: 364.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 14.v,
              width: 19.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 18.v),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.titleMediumGray6000116,
                  ),
                  SizedBox(height: 19.v),
                  CustomTextFormField(
                    controller: controller.emailController,
                    hintText: "msg_imshuvo97_gmail_com".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    },
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
  Widget _buildSignUpStack() {
    return SizedBox(
      height: 343.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
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
                        horizontal: 24.h,
                        vertical: 52.v,
                      ),
                      decoration: AppDecoration.fillWhiteAC,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 336.h,
                              margin: EdgeInsets.only(right: 27.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_by_continuing_you2".tr,
                                      style: CustomTextStyles.bodyMedium_1,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "msg_terms_of_service".tr,
                                      style: CustomTextStyles.bodyMediumPrimary,
                                    ),
                                    TextSpan(
                                      text: "lbl_and".tr,
                                      style: CustomTextStyles.bodyMedium_1,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "lbl_privacy_policy".tr,
                                      style: CustomTextStyles.bodyMediumPrimary,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          SizedBox(height: 25.v),
                          CustomElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.homeScreenContainer1Screen);
                            },
                            text: "lbl_sing_up2".tr,
                          ),
                          SizedBox(height: 23.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_already_have_an2".tr,
                                  style: CustomTextStyles
                                      .titleSmallOnPrimaryContainer,
                                ),
                                TextSpan(
                                  text: "lbl_singup".tr,
                                  style: CustomTextStyles.titleSmallPrimary,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 19.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.titleMediumGray6000116,
                  ),
                  SizedBox(height: 20.v),
                  SizedBox(
                    height: 34.v,
                    width: 364.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup6803Gray30001,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
