import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "onbording ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onbordingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sing in ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.singInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Number".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.numberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "select location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "log in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Explore".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Beverages".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.beveragesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "filters".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filtersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "order accepted".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderAcceptedScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
