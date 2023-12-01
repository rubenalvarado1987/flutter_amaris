import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      SizedBox(
                          height: 68.v,
                          width: 267.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Row(
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGroup,
                                        height: 50.v,
                                        width: 60.h,
                                        alignment: Alignment.topCenter),
                                    Text(
                                      "msg_app_name".tr,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.displayMedium,
                                    )
                                  ],
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 9.h),
                                        child: Text("msg_online_groceriet".tr,
                                            style: CustomTextStyles
                                                .bodyMediumWhiteA70001)))
                              ]))
                    ]))));
  }
}
