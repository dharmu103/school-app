import 'package:flutter/cupertino.dart';
import 'package:school_app/modules/student/home_screen_five_draweritem/home_screen_five_draweritem.dart';
import 'package:school_app/modules/student/student_transaction/widget/listtile_transaction.dart';
import 'package:school_app/modules/vendor/vendor_hp_one_draweritem/vendor_hp_one_draweritem.dart';
import 'package:school_app/widgets/custom_app_bar_widget.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

import 'package:flutter/material.dart';

import 'controller/student_transaction_controller.dart';

class StudentTransactionScreen extends GetWidget<StudentTransactionController> {
  const StudentTransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Transactions",
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                        child: IntrinsicHeight(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  width: 50,
                                  fit: BoxFit.contain,
                                  imagePath: ImageConstant.imgEllipse109,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("John Smith",
                                          style: CustomTextStyles
                                              .titleMediumBlack900),
                                      Text("₹500",
                                          style: CustomTextStyles
                                              .titleMediumBlack900),
                                    ]),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 24, top: 28, bottom: 15, right: 24),
                        child: Row(
                          children: [
                            Text(
                              "Latest Payments",
                              style:
                                  CustomTextStyles.titleMediumBlack900.copyWith(
                                height: 24 / 20,
                              ),
                            ),
                            Spacer(),
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
                              child: ListTileOfTransactionmWidget(),
                            );
                          }),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: GestureDetector(
          onTap: () {
            Get.toNamed(AppRoutes.studentIssueScreen);
          },
          child: Center(
            child: Text(
              "Raise an issue",
              style: CustomTextStyles.titleSmallRedA700,
            ),
          ),
        ),
      ),
    ));
  }
}
