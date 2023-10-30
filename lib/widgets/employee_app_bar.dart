import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_image_view.dart';

import '../core/utils/size_utils.dart';

class EmployeeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EmployeeAppBar({
    Key? key,
    this.height,
    this.title,
    this.isLeading,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;
  final bool? isLeading;
  final String? title;
  final List<Widget>? actions;
//   final GlobalKey<ScaffoldState> keyEmp;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isLeading == false
          ? SizedBox.shrink()
          : CustomImageView(
              svgPath: ImageConstant.imgArrowleftOnerrorcontainer,
              margin: EdgeInsets.only(
                top: 15,
                left: 24,
              ),
              onTap: () {
                Get.back();
              },
            ),
      title: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Text(
          title ?? "",
          style: CustomTextStyles.bodyLargeOnErrorContainer
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      centerTitle: true,
      actions: [
        CustomImageView(
          svgPath: ImageConstant.imgMenuburger,
          margin: EdgeInsets.only(
            left: 24,
            top: 1,
            right: 24,
          ),
          onTap: () {
            print("open drawer");
            //    Get.defaultDialog()
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 70,
      );
}
