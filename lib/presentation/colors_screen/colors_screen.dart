import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';
import 'widgets/colorsgrid_item_widget.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 461.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFourColumn(context),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Text(
                  "App Primary",
                  style: CustomTextStyles.titleMediumOnPrimarySemiBold,
                ),
              ),
              SizedBox(height: 14.v),
              _buildColorsGrid(context),
              SizedBox(height: 60.v),
              Divider(
                color: appTheme.blueGray50,
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Text(
                  "Error / Success States",
                  style: CustomTextStyles.titleMediumOnPrimarySemiBold,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Row(
                  children: [
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.teal100,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                      decoration: BoxDecoration(
                        color: appTheme.teal400,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray70001,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Row(
                  children: [
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.red100,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                      decoration: BoxDecoration(
                        color: appTheme.red300,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                      decoration: BoxDecoration(
                        color: appTheme.red800,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Row(
                  children: [
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.orange100,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                      decoration: BoxDecoration(
                        color: appTheme.orangeA200,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                      decoration: BoxDecoration(
                        color: appTheme.yellow900,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFourColumn(BuildContext context) {
    return Container(
      width: 461.h,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillBluegray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Colors",
            style: CustomTextStyles.displaySmallSFProOnPrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColorsGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 52.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 69.v,
          crossAxisCount: 1,
          mainAxisSpacing: 1.h,
          crossAxisSpacing: 1.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, index) {
          return ColorsgridItemWidget();
        },
      ),
    );
  }
}
