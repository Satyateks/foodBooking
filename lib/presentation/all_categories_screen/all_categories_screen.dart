import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_search_view.dart';
import 'widgets/burgerscomponent1_item_widget.dart';

// ignore_for_file: must_be_immutable
class AllCategoriesScreen extends StatelessWidget {
  AllCategoriesScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("All Categories",
                          style: theme.textTheme.displaySmall),
                      SizedBox(height: 7.v),
                      CustomSearchView(
                          controller: searchController,
                          hintText: "Search by Category"),
                      SizedBox(height: 18.v),
                      _buildBurgersComponent(context)
                    ]))));
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
  Widget _buildBurgersComponent(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 120.v,
            crossAxisCount: 3,
            mainAxisSpacing: 19.h,
            crossAxisSpacing: 19.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 11,
        itemBuilder: (context, index) {
          return Burgerscomponent1ItemWidget(onTapBurgersComponent: () {
            onTapBurgersComponent(context);
          });
        });
  }

  /// Navigates to the categoryPageScreen when the action is triggered.
  onTapBurgersComponent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categoryPageScreen);
  }
}
