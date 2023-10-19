import 'package:flutter/cupertino.dart';
import 'package:school_app/modules/vendor/vendor_hp_one_draweritem/vendor_hp_one_draweritem.dart';
import 'package:school_app/widgets/vendor_app_bar.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../../student/home_screen/widgets/updates_widget.dart';
import '../transaction_screen/widgets/listcanteenfood_item_widget.dart';
import 'controller/transaction_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class TransactionScreen extends GetWidget<TransactionController> {
  const TransactionScreen({Key? key}) : super(key: key);

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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.h, vertical: 10.v),
                              child: IntrinsicHeight(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        // height: 112.v,
                                        padding: EdgeInsets.only(
                                            left: 20.h,
                                            top: 14.v,
                                            bottom: 12.v),
                                        decoration: AppDecoration.fillGray10001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder6,
                                        ),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "₹500",
                                                style: theme
                                                    .textTheme.headlineLarge
                                                    ?.copyWith(
                                                        color: theme.colorScheme
                                                            .primary),
                                              ),
                                              Text(
                                                "Amount collected\n till now",
                                                style: CustomTextStyles
                                                    .bodySmallBluegray400,
                                              ),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.h,
                                    ),
                                    Expanded(
                                      child: Container(
                                        // height: 100.v,
                                        padding: EdgeInsets.only(
                                            left: 20.h,
                                            top: 14.v,
                                            bottom: 12.v),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "₹500",
                                                style: theme
                                                    .textTheme.headlineLarge
                                                    ?.copyWith(
                                                        color: theme.colorScheme
                                                            .primary),
                                              ),
                                              Text(
                                                "Available Balance",
                                                style: CustomTextStyles
                                                    .bodySmallBluegray400,
                                              ),
                                            ]),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.v,
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
                                  Spacer(),
                                  Container(
                                    width: 100.h,
                                    alignment: Alignment.center,
                                    height: 30.v,
                                    decoration:
                                        AppDecoration.fillGray30001.copyWith(
                                      color: appTheme.cyan50,
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: DropdownButton(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.only(
                                            right: 10, left: 10),
                                        underline: SizedBox(),
                                        icon: CustomImageView(
                                            margin: EdgeInsets.only(left: 10),
                                            svgPath: ImageConstant
                                                .imgArrowdownPrimary),
                                        items: [
                                          DropdownMenuItem(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Today",
                                                style: CustomTextStyles
                                                    .titleSmallPrimary,
                                              )),
                                        ],
                                        onChanged: (v) {}),
                                  )
                                ],
                              ),
                            ),
                            ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: 15,
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
