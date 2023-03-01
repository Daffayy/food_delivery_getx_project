import 'package:food_delivery_getx_project/app/modules/detail_food_screen/bindings/detail_food_screen_binding.dart';
import 'package:food_delivery_getx_project/app/modules/detail_food_screen/views/detail_food_screen_view.dart';

import 'package:food_delivery_getx_project/app/modules/login/sign_up_screen/bindings/sign_up_screen_binding.dart';
import 'package:food_delivery_getx_project/app/modules/login/sign_up_screen/views/sign_up_screen_view.dart';
import 'package:food_delivery_getx_project/app/modules/payment_screen/bindings/payment_screen_binding.dart';
import 'package:food_delivery_getx_project/app/modules/payment_screen/views/payment_screen_view.dart';
import 'package:food_delivery_getx_project/app/modules/profiles/profile/bindings/profile_binding.dart';
import 'package:food_delivery_getx_project/app/modules/profiles/profile_change_screen/bindings/profile_change_screen_binding.dart';
import 'package:food_delivery_getx_project/app/modules/profiles/profile_change_screen/views/profile_change_screen_view.dart';
import 'package:get/get.dart';

import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/checkout/bindings/checkout_binding.dart';
import '../modules/checkout/views/checkout_view.dart';

import '../modules/empty_screen_view/empty_history/bindings/empty_history_binding.dart';
import '../modules/empty_screen_view/empty_history/views/empty_history_view.dart';
import '../modules/empty_screen_view/empty_internet/bindings/empty_internet_binding.dart';
import '../modules/empty_screen_view/empty_internet/views/empty_internet_view.dart';
import '../modules/empty_screen_view/empty_item/bindings/empty_item_binding.dart';
import '../modules/empty_screen_view/empty_item/views/empty_item_view.dart';
import '../modules/empty_screen_view/empty_offer/bindings/empty_offer_binding.dart';
import '../modules/empty_screen_view/empty_offer/views/empty_offer_view.dart';
import '../modules/empty_screen_view/empty_order/bindings/empty_order_binding.dart';
import '../modules/empty_screen_view/empty_order/views/empty_order_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/login_screen/bindings/login_screen_binding.dart';
import '../modules/login/login_screen/views/login_screen_view.dart';
import '../modules/login/tab_bar_login_signup/bindings/tab_bar_login_signup_binding.dart';
import '../modules/login/tab_bar_login_signup/views/tab_bar_login_signup_view.dart';
import '../modules/profiles/profile/views/profile_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.TAB_BAR_LOGIN_SIGNUP,
      page: () => TabBarLoginSignupView(),
      binding: TabBarLoginSignupBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () =>  CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () =>  CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () =>  SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
        name: _Paths.PROFILE,
        page:() => ProfileView(),
        binding: ProfileBinding(),
    ),
    GetPage(
        name: _Paths.EMPTY_HISTORY,
        page: () => EmptyHistoryView(),
        binding: EmptyHistoryBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_INTERNET,
      page: () => EmptyInternetView(),
      binding: EmptyInternetBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_ITEM,
      page: () => EmptyItemView(),
      binding: EmptyItemBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_OFFER,
      page: () => EmptyOfferView(),
      binding: EmptyOfferBinding(),
    ),
    GetPage(
      name: _Paths.EMPTY_ORDER,
      page: () => EmptyOrderView(),
      binding: EmptyOrderBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FOOD_SCREEN,
      page: () => DetailFoodScreenView(),
      binding: DetailFoodScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_SCREEN,
      page: () => SignUpScreenView(),
      binding: SignUpScreenBinding(),
    ),
    GetPage(
      name: _Paths.TAB_BAR_LOGIN_SIGNUP,
      page: () => TabBarLoginSignupView(),
      binding: TabBarLoginSignupBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_SCREEN_VIEW,
      page: () => PaymentScreenView(),
      binding: PaymentScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_CHANGE_SCREEN,
      page: () => ProfileChangeScreenView(),
      binding: ProfileChangeScreenBinding(),
    ),
  ];
}
