import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login / Keyboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginKeyboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Filled",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Phone Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.phoneVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Phone Verification Filled",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.phoneVerificationFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Homepage - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Category Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoryPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All Categories",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allCategoriesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.restaurantTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Utensils",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchUtensilsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Utensils",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.utensilsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Utensils Product",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.utensilsProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Menu - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.restaurantMenuTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Meal Collapsed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealCollapsedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Add-on",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editAddOnScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Meal Full",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealFullScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Utensils Product Faved",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.utensilsProductFavedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Discover",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.discoverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Discover Search",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.discoverSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Restaurant Search - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.restaurantSearchTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Character Styles",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.characterStylesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Colors",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.colorsScreen),
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
  Widget _buildAppNavigation(BuildContext context) {
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
                "App Navigation",
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
                "Check your app's UI from the below demo screens of your app.",
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
  Widget _buildScreenTitle(
    BuildContext context, {
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
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
