import 'controller/select_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';
import 'package:amaris_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SelectLocationScreen extends GetWidget<SelectLocationController> {
  const SelectLocationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray50,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            height: 896.v,
            child: Column(
              children: [
                _buildMainOneStack(),
                SizedBox(height: 36.v),
                Text(
                  "msg_select_your_location".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 11.v),
                SingleChildScrollView(
                  child: Container(
                    width: 324.h,
                    margin: EdgeInsets.only(
                      left: 44.h,
                      right: 45.h,
                    ),
                    child: Text(
                      "msg_swithch_on_your".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeGilroyMediumGray60001,
                    ),
                  ),
                ),
                Spacer(),
                _buildLocationStack(),
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
      height: 255.v,
      width: 413.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
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
                    imagePath: ImageConstant.imgMain12,
                    height: 198.v,
                    width: 413.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.h,
                        vertical: 22.v,
                      ),
                      decoration: AppDecoration.fillGray50,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrame,
                        height: 18.v,
                        width: 10.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIllustration,
            height: 170.v,
            width: 224.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationStack() {
    return SizedBox(
      height: 371.v,
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
                    imagePath: ImageConstant.imgMain13,
                    height: 167.v,
                    width: 413.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 39.v,
                      ),
                      decoration: AppDecoration.fillWhiteAC,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_your_area".tr,
                              style: CustomTextStyles.titleMediumGray6000116,
                            ),
                          ),
                          SizedBox(height: 18.v),
                          CustomTextFormField(
                            controller: controller.locationController,
                            hintText: "msg_types_of_your_area".tr,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                              margin: EdgeInsets.only(
                                left: 30.h,
                                top: 7.v,
                                bottom: 7.v,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgLocation,
                                height: 7.v,
                                width: 13.h,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 37.v,
                            ),
                            contentPadding: EdgeInsets.only(left: 3.h),
                          ),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                            onPressed: () {
                              Get.toNamed(
                                AppRoutes.homeScreenContainer1Screen,
                              );
                            },
                            text: "lbl_submit".tr,
                          ),
                          SizedBox(height: 40.v),
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
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_your_zone".tr,
                      style: CustomTextStyles.titleMediumGray6000116,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_banasree".tr,
                        style: CustomTextStyles.bodyLargeGilroyMedium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 7.v,
                        width: 13.h,
                        margin: EdgeInsets.only(
                          top: 9.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.v),
                  Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
