import '../controller/beverages_controller.dart';
import '../models/beverages_item_model.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BeveragesItemWidget extends StatelessWidget {
  BeveragesItemWidget(
    this.beveragesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BeveragesItemModel beveragesItemModelObj;

  var controller = Get.find<BeveragesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.outlineGray30001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 89.v,
              width: 44.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: beveragesItemModelObj.pngfuelTen!.value,
                      height: 69.v,
                      width: 37.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: beveragesItemModelObj.dietCoke!.value,
                      height: 89.v,
                      width: 44.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Obx(
            () => Text(
              beveragesItemModelObj.h!.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              beveragesItemModelObj.h1!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Obx(
                  () => Text(
                    beveragesItemModelObj.price!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFloatingIcon,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
