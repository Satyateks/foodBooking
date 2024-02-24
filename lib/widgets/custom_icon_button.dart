import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blueGray900,
                  borderRadius: BorderRadius.circular(16.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(29.h),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red10001,
        borderRadius: BorderRadius.circular(19.h),
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillRedTL18 => BoxDecoration(
        color: appTheme.red600,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange300.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillRedTL32 => BoxDecoration(
        color: appTheme.red600,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillBlueGrayTL14 => BoxDecoration(
        color: appTheme.blueGray200,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillBlueGrayTL18 => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillRedTL25 => BoxDecoration(
        color: appTheme.red600,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillBlueGrayTL181 => BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillRedTL181 => BoxDecoration(
        color: appTheme.red100,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillRedTL22 => BoxDecoration(
        color: appTheme.red600,
        borderRadius: BorderRadius.circular(22.h),
      );
}
