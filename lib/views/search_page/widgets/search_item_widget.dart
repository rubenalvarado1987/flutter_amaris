import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(
    this.searchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray30001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 135.v,
            width: 130.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Obx(
                    () => Text(
                      searchItemModelObj.h!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: searchItemModelObj.eggChickenRed!.value,
                    height: 40.v,
                    width: 65.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 25.h,
                      bottom: 38.v,
                    ),
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: searchItemModelObj.eggChickenRed1!.value,
                    height: 121.adaptSize,
                    width: 121.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              searchItemModelObj.h1!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 11.v,
                ),
                child: Obx(
                  () => Text(
                    searchItemModelObj.price!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 58.h),
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
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
