import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
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

  final EdgeInsetsGeometry? margin;

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

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber700,
        borderRadius: BorderRadius.circular(16),
      );
  static BoxDecoration get gradientPrimaryToCyan => BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment(-0.14, 0),
          end: Alignment(1.11, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.cyan50001,
          ],
        ),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal30001,
        borderRadius: BorderRadius.circular(16),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink900,
        borderRadius: BorderRadius.circular(16),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(20),
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan50,
        borderRadius: BorderRadius.circular(20),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(20),
      );
  static BoxDecoration get fillAmberTL20 => BoxDecoration(
        color: appTheme.amber700,
        borderRadius: BorderRadius.circular(20),
      );
  static BoxDecoration get outlineBlueGrayC => BoxDecoration(
        color: appTheme.teal30001,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray8000c,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 2,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray60014,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange900,
        borderRadius: BorderRadius.circular(25),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(25),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green80001,
        borderRadius: BorderRadius.circular(25),
      );
  static BoxDecoration get fillAmberTL25 => BoxDecoration(
        color: appTheme.amber700,
        borderRadius: BorderRadius.circular(25),
      );
  static BoxDecoration get fillPrimaryTL25 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray500,
        borderRadius: BorderRadius.circular(25),
      );
  static BoxDecoration get fillCyanTL25 => BoxDecoration(
        color: appTheme.cyan500,
        borderRadius: BorderRadius.circular(25),
      );
}
