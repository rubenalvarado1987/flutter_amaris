import 'controller/home_screen_container1_controller.dart';
import 'package:flutter/material.dart';
import 'package:amaris_app/core/app_export.dart';
import 'package:amaris_app/views/account_page/account_page.dart';
import 'package:amaris_app/views/explore_screen/explore_screen.dart';
import 'package:amaris_app/views/favorites_page/favorites_page.dart';
import 'package:amaris_app/views/home_screen_container_page/home_screen_container_page.dart';
import 'package:amaris_app/views/my_cart_page/my_cart_page.dart';
import 'package:amaris_app/widgets/custom_bottom_bar.dart';

class HomeScreenContainer1Screen
    extends GetWidget<HomeScreenContainer1Controller> {
  const HomeScreenContainer1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeScreenContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
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
