import 'package:flutter/cupertino.dart';
import 'package:school_app/modules/vendor/vendor_hp_one_draweritem/vendor_hp_one_draweritem.dart';
import 'package:school_app/widgets/vendor_app_bar.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../transaction_screen/controller/transaction_controller.dart';
import '../transaction_screen/widgets/listcanteenfood_item_widget.dart';

import 'package:flutter/material.dart';

class PassbookScreen extends GetWidget<TransactionController> {
  const PassbookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: VendorAppBar(),
            endDrawer: Drawer(
              child: VendorHpOneDraweritem(),
            ),
            body: Container(
                width: Get.width,
                // height: Get.height,
                //   padding: EdgeInsets.only(top: 53.v),
                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      theme.colorScheme.onErrorContainer.withOpacity(1),
                      theme.colorScheme.onErrorContainer.withOpacity(0),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: Get.height,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(1.56, 0.48),
                            end: Alignment(0.5, -0.53),
                            colors: [
                              theme.colorScheme.primary,
                              appTheme.teal300,
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarpattern,
                      height: 62.v,
                      width: 333.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 116.v),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarpattern,
                      height: 62.v,
                      width: 333.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 70.v),
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height,
                      margin: EdgeInsets.only(top: 93.v),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusStyle.roundedBorderUp25,
                      ),
                      child: SingleChildScrollView(
                        physics: ScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25.v,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 18.v,
                                  bottom: 15.v,
                                  right: 24.h),
                              child: Row(
                                children: [
                                  Text(
                                    "Transaction History",
                                    style: CustomTextStyles.titleLargeOnPrimary
                                        .copyWith(
                                      height: 24 / 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 24.h,
                              ),
                              child: Row(
                                children: [
                                  Text("October",
                                      style:
                                          CustomTextStyles.titleSmallPrimary),
                                ],
                              ),
                            ),
                            ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: 5,
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemBuilder: (itemBuilder, index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.v, horizontal: 24.h),
                                    child: ListcanteenfoodItemWidget(),
                                  );
                                }),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 14.v,
                                left: 24.h,
                              ),
                              child: Row(
                                children: [
                                  Text("November",
                                      style:
                                          CustomTextStyles.titleSmallPrimary),
                                ],
                              ),
                            ),
                            ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: 5,
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemBuilder: (itemBuilder, index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.v, horizontal: 24.h),
                                    child: ListcanteenfoodItemWidget(),
                                  );
                                })
                          ],
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
