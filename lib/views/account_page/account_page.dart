import 'controller/account_controller.dart';
import 'models/account_model.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:amaris_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:amaris_app/widgets/app_bar/appbar_title.dart';
import 'package:amaris_app/widgets/app_bar/appbar_title_image.dart';
import 'package:amaris_app/widgets/app_bar/custom_app_bar.dart';

class AccountPage extends StatelessWidget {
  AccountPage({Key? key})
      : super(
          key: key,
        );

  AccountController controller = Get.put(AccountController(AccountModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        // appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle82,
                      height: 70.v,
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppbarTitle(
                          text: "Vihaan Singh",
                        ),
                        AppbarTitleImage(
                          imagePath: ImageConstant.imgVectorPrimary,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.v),
                    AppbarSubtitle(
                      text: "vihaans@gmail.com",
                    ),
                  ],
                ),
                SizedBox(height: 20.v),
                Divider(),
                SizedBox(height: 17.v),
                _buildOrders(),
                SizedBox(height: 20.v),
                Divider(),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: _buildPaymentMethods(
                    userImage: ImageConstant.imgTicket,
                    paymentMethods: "lbl_my_details".tr,
                  ),
                ),
                SizedBox(height: 11.v),
                Divider(
                  indent: 24.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 18.v),
                _buildDeliveryAddress(),
                SizedBox(height: 19.v),
                Divider(
                  indent: 24.h,
                  endIndent: 25.h,
                ),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: _buildPaymentMethods(
                    userImage: ImageConstant.imgVectorIcon,
                    paymentMethods: "lbl_payment_methods".tr,
                  ),
                ),
                SizedBox(height: 18.v),
                Divider(),
                SizedBox(height: 17.v),
                _buildPromoCord(),
                SizedBox(height: 20.v),
                Divider(),
                SizedBox(height: 17.v),
                _buildNotifications(),
                SizedBox(height: 20.v),
                Divider(),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: _buildPaymentMethods(
                    userImage: ImageConstant.imgQuestion,
                    paymentMethods: "lbl_help".tr,
                  ),
                ),
                SizedBox(height: 19.v),
                Divider(),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: _buildPaymentMethods(
                    userImage: ImageConstant.imgAboutIcon,
                    paymentMethods: "lbl_about".tr,
                  ),
                ),
                SizedBox(height: 20.v),
                Divider(),
                SizedBox(height: 51.v),
                _buildGoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 98.v,
      leadingWidth: 88.h,
      centerTitle: true,
      leading: AppbarLeadingImageOne(
        imagePath: ImageConstant.imgRectangle82,
        margin: EdgeInsets.only(left: 25.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 18.h),
              child: Row(
                children: [
                  AppbarTitle(
                    text: "Vihaan Singh",
                  ),
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgVectorPrimary,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            AppbarSubtitle(
              text: "vihaans@gmail.com",
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrders() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTwitter,
            height: 20.v,
            width: 18.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "lbl_orders".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocationOnprimary20x16,
            height: 20.v,
            width: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Text(
              "msg_delivery_address".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoCord() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTicketOnprimary,
            height: 21.v,
            width: 22.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Text(
              "lbl_promo_cord".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifications() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgNotification,
            height: 20.v,
            width: 17.h,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Text(
              "lbl_notifecations".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup6892,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 105.h,
              top: 5.v,
            ),
            child: Text(
              "lbl_log_out".tr,
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPaymentMethods({
    required String userImage,
    required String paymentMethods,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 13.v,
          width: 20.h,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            paymentMethods,
            style: CustomTextStyles.titleMedium_1.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgBackArrow,
          height: 14.v,
          width: 8.h,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 5.v,
          ),
        ),
      ],
    );
  }
}
