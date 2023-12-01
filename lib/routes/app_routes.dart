import 'package:amaris_app/views/home_screen_container_page/home_screen_container_page.dart';
import 'package:amaris_app/views/splash_screen/splash_screen.dart';
import 'package:amaris_app/views/splash_screen/binding/splash_binding.dart';
import 'package:amaris_app/views/onbording_screen/onbording_screen.dart';
import 'package:amaris_app/views/onbording_screen/binding/onbording_binding.dart';
import 'package:amaris_app/views/sing_in_screen/sing_in_screen.dart';
import 'package:amaris_app/views/sing_in_screen/binding/sing_in_binding.dart';
import 'package:amaris_app/views/number_screen/number_screen.dart';
import 'package:amaris_app/views/number_screen/binding/number_binding.dart';
import 'package:amaris_app/views/verification_screen/verification_screen.dart';
import 'package:amaris_app/views/verification_screen/binding/verification_binding.dart';
import 'package:amaris_app/views/select_location_screen/select_location_screen.dart';
import 'package:amaris_app/views/select_location_screen/binding/select_location_binding.dart';
import 'package:amaris_app/views/log_in_screen/log_in_screen.dart';
import 'package:amaris_app/views/log_in_screen/binding/log_in_binding.dart';
import 'package:amaris_app/views/sign_up_screen/sign_up_screen.dart';
import 'package:amaris_app/views/sign_up_screen/binding/sign_up_binding.dart';
import 'package:amaris_app/views/home_screen_container1_screen/home_screen_container1_screen.dart';
import 'package:amaris_app/views/home_screen_container1_screen/binding/home_screen_container1_binding.dart';
import 'package:amaris_app/views/product_detail_screen/product_detail_screen.dart';
import 'package:amaris_app/views/product_detail_screen/binding/product_detail_binding.dart';
import 'package:amaris_app/views/explore_screen/explore_screen.dart';
import 'package:amaris_app/views/explore_screen/binding/explore_binding.dart';
import 'package:amaris_app/views/beverages_screen/beverages_screen.dart';
import 'package:amaris_app/views/beverages_screen/binding/beverages_binding.dart';
import 'package:amaris_app/views/filters_screen/filters_screen.dart';
import 'package:amaris_app/views/filters_screen/binding/filters_binding.dart';
import 'package:amaris_app/views/checkout_screen/checkout_screen.dart';
import 'package:amaris_app/views/checkout_screen/binding/checkout_binding.dart';
import 'package:amaris_app/views/order_accepted_screen/order_accepted_screen.dart';
import 'package:amaris_app/views/order_accepted_screen/binding/order_accepted_binding.dart';
import 'package:amaris_app/views/app_navigation_screen/app_navigation_screen.dart';
import 'package:amaris_app/views/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onbordingScreen = '/onbording_screen';

  static const String singInScreen = '/sing_in_screen';

  static const String numberScreen = '/number_screen';

  static const String verificationScreen = '/verification_screen';

  static const String selectLocationScreen = '/select_location_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreenContainerPage = '/home_screen_container_page';

  static const String homeScreenContainer1Screen =
      '/home_screen_container1_screen';

  static const String productDetailScreen = '/product_detail_screen';

  static const String exploreScreen = '/explore_screen';

  static const String beveragesScreen = '/beverages_screen';

  static const String searchPage = '/search_page';

  static const String filtersScreen = '/filters_screen';

  static const String myCartPage = '/my_cart_page';

  static const String favoritesPage = '/favorites_page';

  static const String checkoutScreen = '/checkout_screen';

  static const String orderAcceptedScreen = '/order_accepted_screen';

  static const String accountPage = '/account_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onbordingScreen,
      page: () => OnbordingScreen(),
      bindings: [
        OnbordingBinding(),
      ],
    ),
    GetPage(
      name: singInScreen,
      page: () => SingInScreen(),
      bindings: [
        SingInBinding(),
      ],
    ),
    GetPage(
      name: numberScreen,
      page: () => NumberScreen(),
      bindings: [
        NumberBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: selectLocationScreen,
      page: () => SelectLocationScreen(),
      bindings: [
        SelectLocationBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainer1Screen,
      page: () => HomeScreenContainer1Screen(),
      bindings: [
        HomeScreenContainer1Binding(),
      ],
    ),
    GetPage(
      name: productDetailScreen,
      page: () => ProductDetailScreen(),
      bindings: [
        ProductDetailBinding(),
      ],
    ),
    GetPage(
      name: exploreScreen,
      page: () => ExploreScreen(),
      bindings: [
        ExploreBinding(),
      ],
    ),
    GetPage(
      name: beveragesScreen,
      page: () => BeveragesScreen(),
      bindings: [
        BeveragesBinding(),
      ],
    ),
    GetPage(
      name: filtersScreen,
      page: () => FiltersScreen(),
      bindings: [
        FiltersBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: orderAcceptedScreen,
      page: () => OrderAcceptedScreen(),
      bindings: [
        OrderAcceptedBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
