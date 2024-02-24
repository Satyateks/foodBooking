import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/presentation/restaurant_favorited_page/restaurant_favorited_page.dart';
import 'package:pru0234_s_application5/presentation/restaurant_page/restaurant_page.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_icon_button.dart';
import 'package:pru0234_s_application5/presentation/restaurant_more_options_bottomsheet/restaurant_more_options_bottomsheet.dart';
import 'package:pru0234_s_application5/presentation/restaurant_more_info_bottomsheet/restaurant_more_info_bottomsheet.dart';

class RestaurantTabContainerScreen extends StatefulWidget {
  const RestaurantTabContainerScreen({Key? key}) : super(key: key);

  @override
  RestaurantTabContainerScreenState createState() =>
      RestaurantTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class RestaurantTabContainerScreenState
    extends State<RestaurantTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgProductPicture,
                      height: 164.v,
                      width: 390.h),
                  SizedBox(height: 18.v),
                  _buildLogoRow(context),
                  SizedBox(height: 21.v),
                  _buildMusicRow(context),
                  SizedBox(height: 18.v),
                  _buildTabview(context),
                  _buildTabBarView(context)
                ])))));
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
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserPrimary36x36,
              margin: EdgeInsets.only(left: 27.h, top: 1.v, right: 12.h),
              onTap: () {
                onTapUser(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgContrastPrimary,
              margin: EdgeInsets.fromLTRB(22.h, 7.v, 12.h, 6.v),
              onTap: () {
                onTapContrast(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBag,
              margin: EdgeInsets.fromLTRB(28.h, 7.v, 39.h, 6.v))
        ],
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildLogoRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: CustomIconButton(
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      padding: EdgeInsets.all(18.h),
                      decoration: IconButtonStyleHelper.fillRedTL32,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLogo36x36))),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 10.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("McDonald’s",
                            style: CustomTextStyles.headlineMedium26),
                        SizedBox(height: 4.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLinkedinPrimary19x19,
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text("Bramlea & Sandalwood",
                                  style: CustomTextStyles.bodyLarge16))
                        ])
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 26.h, bottom: 18.v),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.fillBlueGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgContrastBlueGray200)))
            ]));
  }

  /// Section Widget
  Widget _buildMusicRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 21.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.fillBluegray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgStar2,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              radius: BorderRadius.circular(1.h),
                              margin: EdgeInsets.only(bottom: 1.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 7.h, top: 4.v),
                              child: Text("Ratings: 4.5",
                                  style: CustomTextStyles.titleSmallMedium_2))
                        ]),
                        SizedBox(height: 9.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMusic,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, top: 2.v),
                              child: Text("Delivers in 15-20 min",
                                  style: CustomTextStyles.titleSmallMedium_2))
                        ]),
                        SizedBox(height: 9.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgUserRed800,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text("Burgers",
                                  style: CustomTextStyles.titleSmallMedium_2))
                        ])
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, right: 9.h, bottom: 15.v),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(12.h),
                      decoration: IconButtonStyleHelper.fillWhiteA,
                      onTap: () {
                        onTapBtnArrowRight(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowRight)))
            ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 59.v,
        width: 412.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.blueGray200,
            unselectedLabelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("Breakfast Menu")),
              Tab(child: Text("Lunch & Dinner")),
              Tab(child: Text("Overnight Menu"))
            ]));
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
        height: 294.v,
        child: TabBarView(controller: tabviewController, children: [
          RestaurantPage(),
          RestaurantFavoritedPage(),
          RestaurantFavoritedPage()
        ]));
  }

  /// Shows a modal bottom sheet with [RestaurantMoreOptionsBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapUser(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => RestaurantMoreOptionsBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the restaurantSearchTabContainerScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantSearchTabContainerScreen);
  }

  /// Shows a modal bottom sheet with [RestaurantMoreInfoBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapBtnArrowRight(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => RestaurantMoreInfoBottomsheet(),
        isScrollControlled: true);
  }
}
