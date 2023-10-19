import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:school_app/widgets/custom_app_bar_widget.dart';

import '../../../widgets/custom_image_view.dart';
import 'controller/attendence_controller.dart';

import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

import 'widgets/lists2_item_widget.dart';

// class AttendenceScreen1 extends GetWidget<AttendenceController> {
//   const AttendenceScreen1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             // appBar: CustomAppBar(
//             //     height: 47.v,
//             //     leadingWidth: 48.h,
//             //     leading: AppbarImage(
//             //         svgPath: ImageConstant.imgArrowleftBlack900,
//             //         margin:
//             //             EdgeInsets.only(left: 24.h, top: 12.v, bottom: 11.v),
//             //         onTap: () {
//             //           onTapArrowleftone();
//             //         }),
//             //     centerTitle: true,
//             //     title: AppbarSubtitle2(text: "lbl_attendence".tr)),
//             body: Container(
//                 width: double.maxFinite,
//                 padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v),
//                 child: Column(children: [
//                   SizedBox(
//                       height: 307.v,
//                       width: 327.h,
//                       child: Stack(alignment: Alignment.bottomLeft, children: [
//                         Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Container(
//                                 height: 32.adaptSize,
//                                 width: 32.adaptSize,
//                                 margin: EdgeInsets.only(left: 4.h),
//                                 decoration: BoxDecoration(
//                                     color: appTheme.gray30004,
//                                     borderRadius:
//                                         BorderRadius.circular(16.h)))),
//                         Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Padding(
//                                 padding:
//                                     EdgeInsets.only(left: 4.h, bottom: 45.v),
//                                 child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Container(
//                                           height: 32.adaptSize,
//                                           width: 32.adaptSize,
//                                           decoration: BoxDecoration(
//                                               color: appTheme.gray30004,
//                                               borderRadius:
//                                                   BorderRadius.circular(16.h))),
//                                       SizedBox(height: 13.v),
//                                       Container(
//                                           height: 32.adaptSize,
//                                           width: 32.adaptSize,
//                                           decoration: BoxDecoration(
//                                               color: appTheme.gray30004,
//                                               borderRadius:
//                                                   BorderRadius.circular(16.h))),
//                                       SizedBox(height: 13.v),
//                                       Container(
//                                           height: 32.adaptSize,
//                                           width: 32.adaptSize,
//                                           decoration: BoxDecoration(
//                                               color: appTheme.gray30004,
//                                               borderRadius:
//                                                   BorderRadius.circular(16.h))),
//                                       SizedBox(height: 13.v),
//                                       Container(
//                                           height: 32.adaptSize,
//                                           width: 32.adaptSize,
//                                           decoration: BoxDecoration(
//                                               color: appTheme.gray30004,
//                                               borderRadius:
//                                                   BorderRadius.circular(16.h)))
//                                     ]))),
//                         Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text("lbl_august".tr,
//                                             style: theme.textTheme.bodyLarge),
//                                         Spacer(),
//                                         CustomImageView(
//                                             svgPath: ImageConstant.imgArrowleft,
//                                             height: 20.adaptSize,
//                                             width: 20.adaptSize,
//                                             margin:
//                                                 EdgeInsets.only(bottom: 5.v)),
//                                         CustomImageView(
//                                             svgPath:
//                                                 ImageConstant.imgArrowright,
//                                             height: 20.adaptSize,
//                                             width: 20.adaptSize,
//                                             margin: EdgeInsets.only(
//                                                 left: 4.h, bottom: 5.v))
//                                       ]),
//                                   SizedBox(height: 28.v),
//                                   SizedBox(
//                                       height: 247.v,
//                                       width: 305.h,
//                                       child: Stack(
//                                           alignment: Alignment.bottomRight,
//                                           children: [
//                                             Align(
//                                                 alignment: Alignment.topLeft,
//                                                 child: Container(
//                                                     height: 40.adaptSize,
//                                                     width: 40.adaptSize,
//                                                     margin: EdgeInsets.only(
//                                                         left: 86.h, top: 81.v),
//                                                     decoration: BoxDecoration(
//                                                         color: appTheme.red700,
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(
//                                                                     20.h)))),
//                                             Align(
//                                                 alignment:
//                                                     Alignment.bottomRight,
//                                                 child: Container(
//                                                     height: 40.adaptSize,
//                                                     width: 40.adaptSize,
//                                                     margin: EdgeInsets.only(
//                                                         right: 85.h,
//                                                         bottom: 36.v),
//                                                     decoration: BoxDecoration(
//                                                         color: appTheme.red700,
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(
//                                                                     20.h)))),
//                                             Align(
//                                                 alignment: Alignment.center,
//                                                 child: SizedBox(
//                                                     height: 247.v,
//                                                     child: Obx(() =>
//                                                         ListView.separated(
//                                                           scrollDirection:
//                                                               Axis.horizontal,
//                                                           separatorBuilder:
//                                                               (context, index) {
//                                                             return SizedBox(
//                                                                 width: 29.h);
//                                                           },
//                                                           // itemCount: controller
//                                                           //     .attendenceModelObj
//                                                           //     .value
//                                                           //     .lists2ItemList
//                                                           //     .value
//                                                           //     .length,
//                                                           itemBuilder:
//                                                               (context, index) {
//                                                             Lists2ItemModel
//                                                                 model =
//                                                                 controller
//                                                                     .attendenceModelObj
//                                                                     .value
//                                                                     .lists2ItemList
//                                                                     .value[index];
//                                                             return Lists2ItemWidget(
//                                                                 model);
//                                                           },
//                                                           itemCount: 4,
//                                                         ))))
//                                           ]))
//                                 ]))
//                       ])),
//                   SizedBox(height: 43.v),
//                   Expanded(
//                       child: Obx(() => ListView.separated(
//                           physics: NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           separatorBuilder: (context, index) {
//                             return SizedBox(height: 14.v);
//                           },
//                           itemCount: 4,
//                           itemBuilder: (context, index) {
//                             // AbsentprofileItemModel model = controller
//                             //     .attendenceModelObj
//                             //     .value
//                             //     .absentprofileItemList
//                             //     .value[index];
//                             // return AbsentprofileItemWidget(model);
//                           })))
//                 ]))));
//   }
// }

class AttendenceScreen extends GetWidget<AttendenceController> {
  const AttendenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            leading: CustomImageView(
                margin: EdgeInsets.only(left: 24.h),
                svgPath: ImageConstant.imgArrowleftOnerrorcontainer),
            title: "Attendence",
          ),
          body: SingleChildScrollView(
            child: Container(
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
                    Positioned(
                      top: 93.v,
                      child: Container(
                        width: Get.width,
                        height: Get.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusStyle.roundedBorderUp35,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          //   Container(
                          //     width: Get.width,
                          //     height: 400,
                          //     child: CleanCalendar(
                          //       dateSelectionMode:
                          //           DatePickerSelectionMode.disable,
                          //       weekdaysSymbol: Weekdays(
                          //           monday: "M",
                          //           tuesday: "T",
                          //           wednesday: "W",
                          //           thursday: "T",
                          //           friday: "F",
                          //           saturday: "S",
                          //           sunday: "S"),
                          //     ),
                          //   ),
                          //   DateRangePickerDialog(
                          //       firstDate: DateTime(2022),
                          //       lastDate: DateTime(2024)),

                          CalendarDatePicker(
                              initialCalendarMode: DatePickerMode.year,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2024),
                              onDateChanged: (date) {}),

                          Lists2ItemWidget()
                        ],
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}

onTapArrowleftone() {
  Get.back();
}
