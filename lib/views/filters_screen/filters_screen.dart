import 'controller/filters_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:amaris_app/widgets/app_bar/appbar_title.dart';
import 'package:amaris_app/widgets/app_bar/custom_app_bar.dart';
import 'package:amaris_app/widgets/custom_checkbox_button.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

class FiltersScreen extends GetWidget<FiltersController> {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 413.h,
                margin: EdgeInsets.only(top: 14.v),
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v),
                decoration: AppDecoration.fillGray100
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_categories".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 24.v),
                      Row(children: [
                        CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL8,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup17)),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h, top: 4.v),
                            child: Text("lbl_eggs".tr,
                                style: CustomTextStyles
                                    .bodyLargeGilroyMediumPrimary_1))
                      ]),
                      SizedBox(height: 20.v),
                      _buildNoodlesPasta(),
                      SizedBox(height: 20.v),
                      _buildChipsCrisps(),
                      SizedBox(height: 20.v),
                      _buildFastFood(),
                      SizedBox(height: 37.v),
                      Text("lbl_brand".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 26.v),
                      _buildIndividualCallection(),
                      SizedBox(height: 20.v),
                      Row(children: [
                        CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL8,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup17)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 11.h, top: 2.v, bottom: 2.v),
                            child: Text("lbl_cocola".tr,
                                style: CustomTextStyles
                                    .bodyLargeGilroyMediumPrimary_1))
                      ]),
                      SizedBox(height: 20.v),
                      _buildIfad(),
                      SizedBox(height: 20.v),
                      _buildKaziFarmas(),
                      Spacer(),
                      SizedBox(height: 8.v),
                      CustomElevatedButton(text: "lbl_apply_filter".tr)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 55.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgCloseOnprimary,
            margin: EdgeInsets.only(left: 25.h, top: 22.v, bottom: 17.v),
            onTap: () {
              onTapClose();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_filters".tr));
  }

  /// Section Widget
  Widget _buildNoodlesPasta() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_noodles_pasta".tr,
        value: controller.noodlesPasta.value,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          controller.noodlesPasta.value = value;
        }));
  }

  /// Section Widget
  Widget _buildChipsCrisps() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_chips_crisps".tr,
        value: controller.chipsCrisps.value,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
          controller.chipsCrisps.value = value;
        }));
  }

  /// Section Widget
  Widget _buildFastFood() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_fast_food".tr,
        value: controller.fastFood.value,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          controller.fastFood.value = value;
        }));
  }

  /// Section Widget
  Widget _buildIndividualCallection() {
    return Obx(() => CustomCheckboxButton(
        text: "msg_individual_callection".tr,
        value: controller.individualCallection.value,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          controller.individualCallection.value = value;
        }));
  }

  /// Section Widget
  Widget _buildIfad() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_ifad".tr,
        value: controller.ifad.value,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          controller.ifad.value = value;
        }));
  }

  /// Section Widget
  Widget _buildKaziFarmas() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_kazi_farmas".tr,
        value: controller.kaziFarmas.value,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          controller.kaziFarmas.value = value;
        }));
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
