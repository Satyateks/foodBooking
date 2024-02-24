import 'package:flutter/material.dart';
import 'package:pru0234_s_application5/core/app_export.dart';

class CharacterStylesScreen extends StatelessWidget {
  const CharacterStylesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 532.h,
          child: Column(
            children: [
              _buildTypographySection(context),
              SizedBox(height: 22.v),
              Container(
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 27.h,
                ),
                padding: EdgeInsets.symmetric(vertical: 9.v),
                decoration: AppDecoration.outlineBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Heading 1",
                        style: CustomTextStyles.interPrimary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Heading 2",
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Heading 3",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Heading 4",
                        style: CustomTextStyles.displaySmallMedium,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Divider(
                      color: appTheme.blueGray50,
                      indent: 1.h,
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Row(
                        children: [
                          Text(
                            "Subtitle 1",
                            style: CustomTextStyles.headlineSmallMedium,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 29.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Subtitle 2",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Body",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "CAPTION",
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Button",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                    ),
                    SizedBox(height: 12.v),
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
  Widget _buildTypographySection(BuildContext context) {
    return Container(
      width: 532.h,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillBluegray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.v),
          Text(
            "Typography",
            style: CustomTextStyles.displaySmallSFProOnPrimary,
          ),
        ],
      ),
    );
  }
}
