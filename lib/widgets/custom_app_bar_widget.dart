import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.leading,
    this.title,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Widget? leading;

  final String? title;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: theme.colorScheme.secondaryContainer),
      elevation: 0,
      toolbarHeight: 93,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leading: leading ??
          CustomImageView(
            svgPath: ImageConstant.imgArrowleftOnerrorcontainer,
            margin: EdgeInsets.only(left: 24),
            onTap: () {
              Get.back();
            },
          ),
      //   leadingWidth: 48,
      title: Text(
        title.toString(),
        style: CustomTextStyles.titleLargeOnErrorContainer
            .copyWith(fontWeight: FontWeight.w500),
      ),
      titleSpacing: 0,
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 93,
      );
}
