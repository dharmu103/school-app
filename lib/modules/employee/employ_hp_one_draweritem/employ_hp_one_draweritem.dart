import '../../../widgets/custom_image_view.dart';

import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

class EmployDraweritem extends StatelessWidget {
  EmployDraweritem({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 350.h,
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 58.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgChristinawocin,
                        height: 104.adaptSize,
                        width: 104.adaptSize,
                        radius: BorderRadius.circular(
                          52.h,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "lbl_poonam_saini".tr,
                        style: CustomTextStyles.titleLargeOnPrimary,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "msg_i_card_no_112".tr,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_class_5th".tr,
                          style: CustomTextStyles.titleSmallPrimaryMedium,
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowrightOnprimary,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 40.h,
                      bottom: 143.v,
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 42.v,
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.employeeScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFileOnprimarycontainer,
                      height: 21.v,
                      width: 16.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "lbl_attendence".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 27.v,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadCurricularScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmark,
                      height: 20.v,
                      width: 16.h,
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "Upload Curricular".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 27.v,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadResultScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmark,
                      height: 20.v,
                      width: 16.h,
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "Upload Result".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 28.v,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadAssignmentScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMenuOnprimarycontainer,
                      height: 21.v,
                      width: 16.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "Upload Assignment".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 26.v,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.studentContactScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSave,
                      height: 21.v,
                      width: 17.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "lbl_student_contact".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 29.v,
                right: 32.h,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.assignmentStatusScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMail,
                      height: 18.v,
                      width: 20.h,
                      margin: EdgeInsets.only(bottom: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Assignment Status".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 29.v,
                right: 32.h,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.uploadAssignmentStatusScreen);
                },
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMail,
                      height: 18.v,
                      width: 20.h,
                      margin: EdgeInsets.only(bottom: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Upload Assignment Status".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 30.v,
                bottom: 30.v,
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
                      svgPath: ImageConstant.imgFile,
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
          ],
        ),
      ),
    );
  }
}
