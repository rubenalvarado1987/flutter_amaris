import '../controller/home_screen_container_controller.dart';
import '../models/homescreencontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomescreencontainerItemWidget extends StatelessWidget {
  HomescreencontainerItemWidget(
    this.homescreencontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomescreencontainerItemModel homescreencontainerItemModelObj;

  var controller = Get.find<HomeScreenContainerController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AppRoutes.productDetailScreen,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineGray30001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder19,
        ),
        width: 173.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 7.v),
            Obx(
              () => CustomImageView(
                imagePath: homescreencontainerItemModelObj.bellPepperRed!.value,
                height: 85.v,
                width: 97.h,
                margin: EdgeInsets.only(left: 21.h),
              ),
            ),
            SizedBox(height: 19.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Obx(
                () => Text(
                  homescreencontainerItemModelObj.h!.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Obx(
                () => Text(
                  homescreencontainerItemModelObj.h1!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
            SizedBox(height: 19.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.v),
                    child: Obx(
                      () => Text(
                        homescreencontainerItemModelObj.price!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
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
            ),
          ],
        ),
      ),
    );
  }
}
