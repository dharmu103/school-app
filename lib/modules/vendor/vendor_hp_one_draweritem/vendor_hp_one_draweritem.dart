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
        width: 311.h,
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.v),
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
                left: 18.h,
                top: 48.v,
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
                left: 18.h,
                top: 24.v,
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
                left: 18.h,
                top: 24.v,
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
                left: 18.h,
                top: 26.v,
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
                      height: 16.v,
                      width: 20.h,
                      margin: EdgeInsets.only(bottom: 5.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
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
