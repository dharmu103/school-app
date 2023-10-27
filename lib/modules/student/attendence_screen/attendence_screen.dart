import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:school_app/widgets/custom_app_bar_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
            title: "Attendence",
          ),
          body: Container(
              width: Get.width,
              height: Get.height,
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
                    height: double.maxFinite,
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
                          Padding(
                            padding: EdgeInsets.only(
                                left: 24.h, top: 18.v, right: 12.h),
                            child: Container(
                              height: Get.height * 0.42,
                              child: SfDateRangePicker(
                                headerHeight: 50.v,
                                headerStyle: DateRangePickerHeaderStyle(
                                    textStyle:
                                        CustomTextStyles.titleMediumBlack900),
                                selectionTextStyle:
                                    CustomTextStyles.titleMediumBluegray900,
                                onSelectionChanged: (v) {},
                                selectionMode:
                                    DateRangePickerSelectionMode.single,
                                monthCellStyle: DateRangePickerMonthCellStyle(
                                    todayTextStyle:
                                        CustomTextStyles.titleMediumBluegray900,
                                    specialDatesTextStyle: CustomTextStyles
                                        .titleMediumBluegray900
                                        ?.copyWith(color: Colors.white),
                                    specialDatesDecoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: appTheme.red700),
                                    textStyle:
                                        CustomTextStyles.titleMediumBluegray900,
                                    weekendTextStyle:
                                        CustomTextStyles.titleMediumRedA700,
                                    //   leadingDatesTextStyle:
                                    //       CustomTextStyles.bodyMedium13,
                                    //   trailingDatesTextStyle:
                                    //       CustomTextStyles.bodyMedium13,
                                    blackoutDateTextStyle:
                                        CustomTextStyles.titleMediumRedA700),
                                monthViewSettings:
                                    DateRangePickerMonthViewSettings(
                                        numberOfWeeksInView: 6,
                                        //   showTrailingAndLeadingDates: true,
                                        viewHeaderStyle:
                                            DateRangePickerViewHeaderStyle(
                                                textStyle: CustomTextStyles
                                                    .titleMediumBluegray900),
                                        firstDayOfWeek: 7,
                                        weekendDays: [
                                      7
                                    ],
                                        specialDates: [
                                      DateTime(2023, 10, 10),
                                      DateTime(2023, 10, 26)
                                    ]),
                                initialSelectedRange: PickerDateRange(
                                    DateTime.now()
                                        .subtract(const Duration(days: 4)),
                                    DateTime.now()
                                        .add(const Duration(days: 3))),
                              ),
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 24.h,
                              ),
                              Container(
                                width: Get.width * 0.42,
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "26",
                                        style: theme.textTheme.titleLarge
                                            ?.copyWith(fontSize: 26),
                                      ),
                                      Text(
                                        "Working Days",
                                        style: theme.textTheme.titleSmall,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: Get.width * 0.42,
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "24",
                                        style: theme.textTheme.titleLarge
                                            ?.copyWith(fontSize: 26),
                                      ),
                                      Text(
                                        "Present Days",
                                        style: theme.textTheme.titleSmall,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.v,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 24.h,
                              ),
                              Container(
                                width: Get.width * 0.42,
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2",
                                        style: theme.textTheme.titleLarge
                                            ?.copyWith(fontSize: 26),
                                      ),
                                      Text(
                                        "Absent Days",
                                        style: theme.textTheme.titleSmall,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: Get.width * 0.42,
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "90 %",
                                        style: theme.textTheme.titleLarge
                                            ?.copyWith(fontSize: 26),
                                      ),
                                      Text(
                                        "Persent",
                                        style: theme.textTheme.titleSmall,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24.h,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Container(
                              height: 50.v,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      color: theme.colorScheme.primary)),
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 50.v,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              bottomLeft: Radius.circular(16)),
                                          color: theme.colorScheme.primary),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Festival & Holidays",
                                      style:
                                          CustomTextStyles.titleMediumBlack900,
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color: theme.colorScheme.primary),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "01",
                                          style: CustomTextStyles
                                              .bodyMediumOnErrorContainer13,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}

class MeetingDataSource {}

onTapArrowleftone() {
  Get.back();
}
