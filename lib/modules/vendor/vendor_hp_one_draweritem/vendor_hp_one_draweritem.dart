import '../../../widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class VendorHpOneDraweritem extends StatelessWidget {
  VendorHpOneDraweritem({
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
          horizontal: 24,
          vertical: 17,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            CustomImageView(
              svgPath: ImageConstant.imgArrowrightOnprimary,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.centerRight,
              onTap: () {
                Get.back();
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 48,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.vendorScreen);
                },
                child: Text(
                  "Home".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 24,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.vendorTransactionScreen);
                },
                child: Text(
                  "Wallet".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 24,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.vendorPassbookScreen);
                },
                child: Text(
                  "Passbook".tr,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
                top: 26,
              ),
              child: GestureDetector(
                onTap: () {
                  PrefUtils.sharedPreferences?.clear();
                  Get.toNamed(AppRoutes.coverScreen);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFileOnprimarycontainer,
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
                style: CustomTextStyles.bodyMediumGray600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
