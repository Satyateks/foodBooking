import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/presentation/homepage_page/homepage_page.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_bottom_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_search_view.dart';
import 'widgets/productcard_item_widget.dart';

// ignore_for_file: must_be_immutable
class UtensilsScreen extends StatelessWidget {
  UtensilsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Container(
                            height: 45.v,
                            width: 150.h,
                            margin: EdgeInsets.only(left: 21.h),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Utensils",
                                      style: CustomTextStyles
                                          .displaySmallRegular)),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text("NEW",
                                      style: CustomTextStyles
                                          .labelLargeDeeporange40001))
                            ])),
                        SizedBox(height: 11.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 21.h),
                                child: CustomSearchView(
                                    controller: searchController,
                                    hintText: "Search Utensils",
                                    alignment: Alignment.center,
                                    borderDecoration: SearchViewStyleHelper
                                        .fillOnErrorContainer,
                                    fillColor:
                                        theme.colorScheme.onErrorContainer))),
                        SizedBox(height: 28.v),
                        _buildProductCard(context)
                      ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 21.h, top: 1.v, bottom: 12.v)),
        title: AppbarSubtitleFour(
            text: "Back", margin: EdgeInsets.only(left: 1.h)),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 21.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 213.v,
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) {
              return ProductcardItemWidget(onTapProductCard: () {
                onTapProductCard(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Discover:
        return "/";
      case BottomBarEnum.Drivethru:
        return "/";
      case BottomBarEnum.Orders:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the utensilsProductScreen when the action is triggered.
  onTapProductCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.utensilsProductScreen);
  }
}
