import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:pru0234_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:pru0234_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pru0234_s_application5/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchUtensilsScreen extends StatelessWidget {
  SearchUtensilsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 45.v,
                          width: 150.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Utensils",
                                    style:
                                        CustomTextStyles.displaySmallRegular)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Text("NEW",
                                    style: CustomTextStyles
                                        .labelLargeDeeporange40001))
                          ])),
                      SizedBox(height: 11.v),
                      CustomSearchView(
                          controller: searchController,
                          hintText: "Cutti|",
                          hintStyle: CustomTextStyles.bodyLargeBluegray700,
                          borderDecoration:
                              SearchViewStyleHelper.fillOnErrorContainer,
                          fillColor: theme.colorScheme.onErrorContainer),
                      SizedBox(height: 28.v),
                      GestureDetector(
                          onTap: () {
                            onTapProduct1(context);
                          },
                          child: Container(
                              width: 165.h,
                              margin: EdgeInsets.only(right: 181.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 20.v),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle57x105,
                                        height: 57.v,
                                        width: 105.h,
                                        margin: EdgeInsets.only(left: 9.h)),
                                    SizedBox(height: 33.v),
                                    SizedBox(
                                        width: 98.h,
                                        child: Text("Cutting Board from Ikea",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles.titleSmall15
                                                .copyWith(height: 1.47))),
                                    SizedBox(height: 8.v),
                                    Text("12.00",
                                        style: CustomTextStyles
                                            .titleSmallSFProTeal400)
                                  ]))),
                      SizedBox(height: 5.v)
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

  /// Navigates to the utensilsProductScreen when the action is triggered.
  onTapProduct1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.utensilsProductScreen);
  }
}
