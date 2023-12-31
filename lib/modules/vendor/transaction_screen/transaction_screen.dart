import 'package:dropdown_button2/dropdown_button2.dart';
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
                //   padding: EdgeInsets.only(top: 53),
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
                      height: 62,
                      width: 333,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 116),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarpattern,
                      height: 62,
                      width: 333,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 70),
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height,
                      margin: EdgeInsets.only(top: 93),
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
                              height: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 10),
                              child: IntrinsicHeight(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        // height: 112,
                                        padding: EdgeInsets.only(
                                            left: 20, top: 14, bottom: 12),
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
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Container(
                                        // height: 100,
                                        padding: EdgeInsets.only(
                                            left: 20, top: 14, bottom: 12),
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
                              height: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 24, top: 18, bottom: 15, right: 24),
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
                                    width: 100,
                                    alignment: Alignment.center,
                                    height: 30,
                                    decoration:
                                        AppDecoration.fillGray30001.copyWith(
                                      color: appTheme.cyan50,
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: GetBuilder<TransactionController>(
                                      init: TransactionController(),
                                      initState: (_) {},
                                      builder: (_) {
                                        return DropdownButton2(
                                            value: controller.transactionOrder,
                                            alignment: Alignment.centerRight,
                                            // padding: EdgeInsets.only(
                                            //     right: 10, left: 10),
                                            underline: SizedBox(),
                                            // icon: CustomImageView(
                                            //     margin: EdgeInsets.only(left: 10),
                                            //     svgPath: ImageConstant
                                            //         .imgArrowdownPrimary),
                                            items: [
                                              DropdownMenuItem(
                                                  value: 0,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Today",
                                                    style: CustomTextStyles
                                                        .titleSmallPrimary,
                                                  )),
                                              DropdownMenuItem(
                                                  value: 1,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Month",
                                                    style: CustomTextStyles
                                                        .titleSmallPrimary,
                                                  )),
                                            ],
                                            onChanged: (v) {
                                              controller.changeListOrder(v);
                                            });
                                      },
                                    ),
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
                                        vertical: 8, horizontal: 24),
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
