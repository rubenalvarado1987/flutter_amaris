import 'controller/explore_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/account_page/account_page.dart';
import 'package:amaris_app/views/explore_screen/explore_screen.dart';
import 'package:amaris_app/views/favorites_page/favorites_page.dart';
import 'package:amaris_app/views/home_screen_container_page/home_screen_container_page.dart';
import 'package:amaris_app/views/my_cart_page/my_cart_page.dart';
import 'package:amaris_app/widgets/custom_bottom_bar.dart';
import 'package:amaris_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ExploreScreen extends GetWidget<ExploreController> {
  const ExploreScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 24.v,
                          width: 126.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl_find_products".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl_find_products".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 29.v),
                        CustomSearchView(
                          // controller: controller.searchController,
                          hintText: "lbl_search_store".tr,
                        ),
                        SizedBox(height: 20.v),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.beveragesScreen,
                              );
                            },
                            child: _buildUserProfile()),
                        SizedBox(height: 15.v),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.beveragesScreen,
                              );
                            },
                            child: _buildClientTestimonials()),
                        SizedBox(height: 14.v),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.beveragesScreen,
                              );
                            },
                            child: _buildReviews()),
                        SizedBox(height: 15.v),
                        // _buildUserProfile1(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.outlineOnError.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 10.v),
                CustomImageView(
                  imagePath: ImageConstant.imgPngfuel6,
                  height: 74.v,
                  width: 111.h,
                ),
                SizedBox(height: 25.v),
                SizedBox(
                  width: 93.h,
                  child: Text(
                    "msg_frash_fruits_vegetable".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 39.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.outlineOrangeA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 95.v,
                  width: 93.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _buildPngfuelSeven(),
                      _buildPngfuelSeven(),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 88.h,
                  child: Text(
                    "msg_cooking_oil_ghee".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 35.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.outlineDeepOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngfuel6,
                  height: 5.v,
                  width: 8.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 5.h),
                ),
                SizedBox(height: 23.v),
                CustomImageView(
                  imagePath: ImageConstant.imgPngfuel9,
                  height: 72.v,
                  width: 102.h,
                ),
                SizedBox(height: 34.v),
                Text(
                  "lbl_meat_fish".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 28.v),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.outlinePurple.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngfuel670x95,
                  height: 70.v,
                  width: 95.h,
                ),
                SizedBox(height: 39.v),
                Text(
                  "lbl_bakery_snacks".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildReviews() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 35.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.outlineYellow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 68.v,
                  width: 102.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPngfuel,
                        height: 67.v,
                        width: 102.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPngfuel67x102,
                        height: 67.v,
                        width: 102.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.v),
                Text(
                  "lbl_dairy_eggs".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 34.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.outlineSecondaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngfuel676x103,
                  height: 76.v,
                  width: 103.h,
                ),
                SizedBox(height: 37.v),
                Text(
                  "lbl_beverages".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 7.h),
          child: _buildPngfuelSix(
            h: "lbl_dairy_eggs".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: _buildPngfuelSix(
            h: "lbl_beverages".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildPngfuelSeven() {
    return SizedBox(
      height: 93.adaptSize,
      width: 93.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel7,
            height: 62.adaptSize,
            width: 62.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 10.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPngfuel8,
            height: 93.adaptSize,
            width: 93.adaptSize,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPngfuelSix({required String h}) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder19,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 99.v,
                width: 103.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngfuel6,
                      height: 69.v,
                      width: 103.h,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1,
                      height: 99.v,
                      width: 100.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.v),
              Text(
                h,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 10.v),
            ],
          ),
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Shop:
        return AppRoutes.homeScreenContainerPage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreScreen;
      case BottomBarEnum.Cart:
        return AppRoutes.myCartPage;
      case BottomBarEnum.Favourite:
        return AppRoutes.favoritesPage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
      case AppRoutes.exploreScreen:
        return ExploreScreen();
      case AppRoutes.myCartPage:
        return MyCartPage();
      case AppRoutes.favoritesPage:
        return FavoritesPage();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
