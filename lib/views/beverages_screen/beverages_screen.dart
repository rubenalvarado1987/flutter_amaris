import '../beverages_screen/widgets/beverages_item_widget.dart';
import 'controller/beverages_controller.dart';
import 'models/beverages_item_model.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:amaris_app/widgets/app_bar/appbar_title.dart';
import 'package:amaris_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:amaris_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class BeveragesScreen extends GetWidget<BeveragesController> {
  const BeveragesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 25.h,
            top: 10.v,
            right: 27.h,
          ),
          child: Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 249.v,
                crossAxisCount: 2,
                mainAxisSpacing: 14.h,
                crossAxisSpacing: 14.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: controller
                  .beveragesModelObj.value.beveragesItemList.value.length,
              itemBuilder: (context, index) {
                BeveragesItemModel model = controller
                    .beveragesModelObj.value.beveragesItemList.value[index];
                return BeveragesItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 35.h,
      leading: AppbarLeadingImage(
        onTap: () {
          Get.back();
        },
        imagePath: ImageConstant.imgFrame,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 18.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_beverages".tr,
      ),
      actions: [
        AppbarTrailingImage(
          onTap: () {
            Get.toNamed(AppRoutes.filtersScreen);
          },
          imagePath: ImageConstant.imgLocationOnprimary,
          margin: EdgeInsets.fromLTRB(25.h, 18.v, 25.h, 20.v),
        ),
      ],
    );
  }
}
