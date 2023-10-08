import '../../../widgets/custom_image_view.dart';
import '../controller/home_controller.dart';
import '../models/home_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';
import 'package:school_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class HomeScreenItemWidget extends StatelessWidget {
  HomeScreenItemWidget(
    this.HomeScreenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeScreenItemModel HomeScreenItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgRectangle,
                height: 169.v,
                width: 326.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 14.h,
                bottom: 13.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      HomeScreenItemModelObj.surfaceareasand!.value,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray900,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_assign_date".tr,
                        style: CustomTextStyles.bodyMediumGray60014,
                      ),
                      Text(
                        "lbl_10_nov_22".tr,
                        style: CustomTextStyles.titleSmallGray800,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "msg_last_submission".tr,
                          style: CustomTextStyles.bodyMediumGray60014,
                        ),
                      ),
                      Text(
                        "lbl_10_dec_22".tr,
                        style: CustomTextStyles.titleSmallGray800,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(
                    height: 35.v,
                    text: "lbl_to_be_submitted".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBg,
                        height: 35.v,
                        width: 298.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientPrimaryToTealDecoration,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallOnErrorContainer,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 21.v,
              width: 113.h,
              margin: EdgeInsets.only(
                left: 14.h,
                top: 12.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.cyan5001,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.h),
                  topRight: Radius.circular(8.h),
                  bottomLeft: Radius.circular(6.h),
                  bottomRight: Radius.circular(8.h),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 13.v,
              ),
              child: Obx(
                () => Text(
                  HomeScreenItemModelObj.mathematics!.value,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
