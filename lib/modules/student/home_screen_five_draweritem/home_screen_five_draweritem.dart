import '../../../widgets/custom_image_view.dart';
import 'controller/home_screen_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class HomeScreenFiveDraweritem extends StatelessWidget {
  HomeScreenFiveDraweritem({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 311,
        padding: EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 16,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              onTap: () {
                Get.back();
              },
              svgPath: ImageConstant.imgArrowrightOnprimary,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(
                top: 41,
                right: 5,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.studentTransactionScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 12,
                ),
                child: Text(
                  "lbl_transactions".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.attendenceScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 11,
                ),
                child: Text(
                  "lbl_attendance".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.carricularScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 12,
                ),
                child: Text(
                  "lbl_circulars".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.studentUpdatesScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 12,
                ),
                child: Text(
                  "Updates".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.studentWorksheetScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 12,
                ),
                child: Text(
                  "lbl_worksheets".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.studentTestReportScreen),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 13,
                ),
                child: Text(
                  "lbl_test_reports".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.studentIssueScreen),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 11,
                ),
                child: Text(
                  "Raise an issue".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 23,
                top: 11,
              ),
              child: Text(
                "Privacy Policy".tr,
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: Divider(
                color: appTheme.gray50001,
                endIndent: 6,
              ),
            ),
            GestureDetector(
              onTap: () {
                PrefUtils.sharedPreferences?.clear();
                Get.offAllNamed(AppRoutes.coverScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFile,
                      height: 16,
                      width: 20,
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14),
                      child: Text(
                        "lbl_logout".tr,
                        style: CustomTextStyles.titleSmallRedA700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Okulsys Copyright © 2023".tr,
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
