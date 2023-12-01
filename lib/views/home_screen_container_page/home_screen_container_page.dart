import '../home_screen_container_page/widgets/homescreencontainer1_item_widget.dart';
import '../home_screen_container_page/widgets/homescreencontainer_item_widget.dart';
import 'controller/home_screen_container_controller.dart';
import 'models/home_screen_container_model.dart';
import 'models/homescreencontainer1_item_model.dart';
import 'models/homescreencontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/custom_icon_button.dart';
import 'package:amaris_app/widgets/custom_search_view.dart';

class HomeScreenContainerPage extends StatelessWidget {
  HomeScreenContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeScreenContainerController controller =
      Get.put(HomeScreenContainerController(HomeScreenContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          decoration: AppDecoration.fillWhiteA70001,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupDeepOrangeA200,
                    height: 30.v,
                    width: 26.h,
                    margin: EdgeInsets.only(left: 169.h),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 101.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgExclude,
                          height: 18.v,
                          width: 15.h,
                          margin: EdgeInsets.only(bottom: 4.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "lbl_location".tr,
                            style: CustomTextStyles.titleMediumGray80001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 25.h,
                    ),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search_store".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildBanner(),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 25.h,
                    ),
                    child: _buildBestSelling(
                      bestSellingLabel: "lbl_exclusive_offer".tr,
                      seeAllLabel: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildExclusiveOfferList(),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 25.h,
                    ),
                    child: _buildBestSelling(
                      bestSellingLabel: "lbl_best_selling".tr,
                      seeAllLabel: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildBestSellingList(),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 25.h,
                    ),
                    child: _buildBestSelling(
                      bestSellingLabel: "lbl_groceries".tr,
                      seeAllLabel: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  _buildPulses(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner() {
    return SizedBox(
      height: 114.v,
      width: 368.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.85,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 114.v,
              width: 364.h,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 162.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 95.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup6812,
                    height: 5.v,
                    width: 41.h,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 114.v,
              width: 367.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup114x367,
                    height: 114.v,
                    width: 367.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 2.v,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img27711,
                            height: 105.v,
                            width: 122.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 18.h,
                              top: 33.v,
                              bottom: 26.v,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "msg_fresh_vegetables".tr,
                                  style: CustomTextStyles
                                      .titleLargeAclonicaOnPrimaryContainer,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "msg_get_up_to_40_off".tr,
                                  style: CustomTextStyles
                                      .titleSmallAirbnbCerealAppPrimary,
                                ),
                              ],
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestSellingList() {
    return SizedBox(
      height: 248.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 1.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: controller.homeScreenContainerModelObj.value
              .homescreencontainerItemList.value.length,
          itemBuilder: (context, index) {
            HomescreencontainerItemModel model = controller
                .homeScreenContainerModelObj
                .value
                .homescreencontainerItemList
                .value[index];
            return HomescreencontainerItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExclusiveOfferList() {
    return SizedBox(
      height: 248.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 1.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: controller.homeScreenContainerModelObj.value
              .exclusiveOfferList.value.length,
          itemBuilder: (context, index) {
            HomescreencontainerItemModel model = controller
                .homeScreenContainerModelObj
                .value
                .exclusiveOfferList
                .value[index];
            return HomescreencontainerItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPulses() {
    return Obx(
      () => StaggeredGridView.countBuilder(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 4,
        crossAxisSpacing: 14.95.h,
        mainAxisSpacing: 14.95.h,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(2);
        },
        itemCount: controller.homeScreenContainerModelObj.value
            .homescreencontainer1ItemList.value.length,
        itemBuilder: (context, index) {
          Homescreencontainer1ItemModel model = controller
              .homeScreenContainerModelObj
              .value
              .homescreencontainer1ItemList
              .value[index];
          return Homescreencontainer1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildPrice({required String price}) {
    return SizedBox(
      width: 144.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 11.v,
            ),
            child: Text(
              price,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(14.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFloatingIcon,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFeadccebd({
    required String h,
    required String h1,
    required String productPrice,
    required String imagePath,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      margin: EdgeInsets.only(right: 10.h),
      decoration: AppDecoration.outlineGray30001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: imagePath,
            height: 79.v,
            width: 99.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              h,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              h1,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray60001,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    productPrice,
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 46.h),
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
    );
  }

  /// Common widget
  Widget _buildBestSelling({
    required String bestSellingLabel,
    required String seeAllLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bestSellingLabel,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 7.v,
          ),
          child: Text(
            seeAllLabel,
            style: CustomTextStyles.titleMediumPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
