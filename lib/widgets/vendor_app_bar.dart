import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/app_export.dart';
import 'custom_image_view.dart';

class VendorAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VendorAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: theme.colorScheme.primary),
        toolbarHeight: 93.v,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 100.h,
        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 16,
            bottom: 16,
          ),
          child: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage(
                ImageConstant.imgEllipse109,
              )),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("School Name",
                style: CustomTextStyles.titleLargeOnErrorContainer),
          ],
        ),
        actions: [
          CustomImageView(
            svgPath: ImageConstant.imgMenuburger,
            margin: EdgeInsets.only(right: 24.h),
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        93.v,
      );
}
