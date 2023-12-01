import '../controller/home_screen_container_controller.dart';
import '../models/homescreencontainer1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';

// ignore: must_be_immutable
class Homescreencontainer1ItemWidget extends StatelessWidget {
  Homescreencontainer1ItemWidget(
    this.homescreencontainer1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Homescreencontainer1ItemModel homescreencontainer1ItemModelObj;

  var controller = Get.find<HomeScreenContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOrangeA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: homescreencontainer1ItemModelObj.pulses!.value,
              height: 71.adaptSize,
              width: 71.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 22.v,
              bottom: 25.v,
            ),
            child: Obx(
              () => Text(
                homescreencontainer1ItemModelObj.pulses1!.value,
                style: CustomTextStyles.titleLargeGilroyGray800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
