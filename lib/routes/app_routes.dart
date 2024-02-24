import 'package:flutter/material.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/onboarding_three_screen/onboarding_three_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_keyboard_screen/login_keyboard_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_up_filled_screen/sign_up_filled_screen.dart';
import '../presentation/phone_verification_screen/phone_verification_screen.dart';
import '../presentation/phone_verification_filled_screen/phone_verification_filled_screen.dart';
import '../presentation/homepage_container_screen/homepage_container_screen.dart';
import '../presentation/category_page_screen/category_page_screen.dart';
import '../presentation/all_categories_screen/all_categories_screen.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/edit_location_screen/edit_location_screen.dart';
import '../presentation/restaurant_tab_container_screen/restaurant_tab_container_screen.dart';
import '../presentation/search_utensils_screen/search_utensils_screen.dart';
import '../presentation/utensils_screen/utensils_screen.dart';
import '../presentation/utensils_product_screen/utensils_product_screen.dart';
import '../presentation/restaurant_menu_tab_container_screen/restaurant_menu_tab_container_screen.dart';
import '../presentation/meal_collapsed_screen/meal_collapsed_screen.dart';
import '../presentation/edit_add_on_screen/edit_add_on_screen.dart';
import '../presentation/meal_full_screen/meal_full_screen.dart';
import '../presentation/utensils_product_faved_screen/utensils_product_faved_screen.dart';
import '../presentation/discover_screen/discover_screen.dart';
import '../presentation/discover_search_screen/discover_search_screen.dart';
import '../presentation/restaurant_search_tab_container_screen/restaurant_search_tab_container_screen.dart';
import '../presentation/character_styles_screen/character_styles_screen.dart';
import '../presentation/colors_screen/colors_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginScreen = '/login_screen';

  static const String loginKeyboardScreen = '/login_keyboard_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpFilledScreen = '/sign_up_filled_screen';

  static const String phoneVerificationScreen = '/phone_verification_screen';

  static const String phoneVerificationFilledScreen =
      '/phone_verification_filled_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String categoryPageScreen = '/category_page_screen';

  static const String allCategoriesScreen = '/all_categories_screen';

  static const String searchScreen = '/search_screen';

  static const String editLocationScreen = '/edit_location_screen';

  static const String restaurantPage = '/restaurant_page';

  static const String restaurantTabContainerScreen =
      '/restaurant_tab_container_screen';

  static const String restaurantFavoritedPage = '/restaurant_favorited_page';

  static const String searchUtensilsScreen = '/search_utensils_screen';

  static const String utensilsScreen = '/utensils_screen';

  static const String utensilsProductScreen = '/utensils_product_screen';

  static const String restaurantMenuPage = '/restaurant_menu_page';

  static const String restaurantMenuTabContainerScreen =
      '/restaurant_menu_tab_container_screen';

  static const String mealCollapsedScreen = '/meal_collapsed_screen';

  static const String editAddOnScreen = '/edit_add_on_screen';

  static const String mealFullScreen = '/meal_full_screen';

  static const String utensilsProductFavedScreen =
      '/utensils_product_faved_screen';

  static const String discoverScreen = '/discover_screen';

  static const String discoverSearchScreen = '/discover_search_screen';

  static const String restaurantSearchPage = '/restaurant_search_page';

  static const String restaurantSearchTabContainerScreen =
      '/restaurant_search_tab_container_screen';

  static const String characterStylesScreen = '/character_styles_screen';

  static const String colorsScreen = '/colors_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    loginScreen: (context) => LoginScreen(),
    loginKeyboardScreen: (context) => LoginKeyboardScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signUpFilledScreen: (context) => SignUpFilledScreen(),
    phoneVerificationScreen: (context) => PhoneVerificationScreen(),
    phoneVerificationFilledScreen: (context) => PhoneVerificationFilledScreen(),
    homepageContainerScreen: (context) => HomepageContainerScreen(),
    categoryPageScreen: (context) => CategoryPageScreen(),
    allCategoriesScreen: (context) => AllCategoriesScreen(),
    searchScreen: (context) => SearchScreen(),
    editLocationScreen: (context) => EditLocationScreen(),
    restaurantTabContainerScreen: (context) => RestaurantTabContainerScreen(),
    searchUtensilsScreen: (context) => SearchUtensilsScreen(),
    utensilsScreen: (context) => UtensilsScreen(),
    utensilsProductScreen: (context) => UtensilsProductScreen(),
    restaurantMenuTabContainerScreen: (context) =>
        RestaurantMenuTabContainerScreen(),
    mealCollapsedScreen: (context) => MealCollapsedScreen(),
    editAddOnScreen: (context) => EditAddOnScreen(),
    mealFullScreen: (context) => MealFullScreen(),
    utensilsProductFavedScreen: (context) => UtensilsProductFavedScreen(),
    discoverScreen: (context) => DiscoverScreen(),
    discoverSearchScreen: (context) => DiscoverSearchScreen(),
    restaurantSearchTabContainerScreen: (context) =>
        RestaurantSearchTabContainerScreen(),
    characterStylesScreen: (context) => CharacterStylesScreen(),
    colorsScreen: (context) => ColorsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
