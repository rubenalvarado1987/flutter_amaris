import 'controller/order_accepted_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OrderAcceptedScreen extends GetWidget<OrderAcceptedController> {
  const OrderAcceptedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: mediaQueryData.size.height,
            width: 413.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 510.v,
                    width: 413.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMain1233x413,
                          height: 233.v,
                          width: 413.h,
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 58.h,
                              vertical: 118.v,
                            ),
                            decoration: AppDecoration.fillGray50,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 33.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup6872,
                                  height: 240.v,
                                  width: 269.h,
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
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 458.v,
                    width: 413.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMain1253x413,
                          height: 253.v,
                          width: 413.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.h,
                              vertical: 18.v,
                            ),
                            decoration: AppDecoration.fillWhiteAC,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 265.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 49.h),
                                  child: Text(
                                    "msg_your_order_has_been".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.headlineMedium28,
                                  ),
                                ),
                                SizedBox(height: 13.v),
                                Container(
                                  width: 273.h,
                                  margin: EdgeInsets.only(
                                    left: 43.h,
                                    right: 47.h,
                                  ),
                                  child: Text(
                                    "msg_your_items_has_been".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyLargeGilroyMediumGray60001
                                        .copyWith(
                                      height: 1.31,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 135.v),
                                CustomElevatedButton(
                                  text: "lbl_track_order".tr,
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_back_to_home".tr,
                                  style: CustomTextStyles.titleMedium_1,
                                ),
                                SizedBox(height: 42.v),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
