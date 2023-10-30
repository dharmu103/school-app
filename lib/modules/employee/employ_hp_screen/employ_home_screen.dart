import 'package:school_app/widgets/custom_image_view.dart';
import 'package:school_app/widgets/employee_app_bar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../employ_hp_one_draweritem/employ_hp_one_draweritem.dart';
import 'controller/employ_home_controller.dart';

import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

import 'package:school_app/widgets/custom_elevated_button.dart';

class EmployHomeScreen extends GetWidget<EmployHomeController> {
  EmployHomeScreen({Key? key})
      : super(
          key: key,
        );
  final GlobalKey<ScaffoldState> _keyEmp = GlobalKey();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      key: _keyEmp,
      appBar: EmployeeAppBar(
        title: "lbl_school_name".tr,
        isLeading: false,
      ),
      endDrawer: Drawer(child: EmployDraweritem()),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 14),
              decoration: AppDecoration.fillPrimary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text("Select date for attendence",
                    style: CustomTextStyles.titleLargeOnPrimary),
              ],
            ),
            Container(
              height: Get.height * 0.42,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SfDateRangePicker(
                headerHeight: 50,
                headerStyle: DateRangePickerHeaderStyle(
                    textStyle: CustomTextStyles.titleMediumBlack900),
                selectionTextStyle: CustomTextStyles.titleMediumBluegray900,
                onSelectionChanged: (v) {},
                selectionMode: DateRangePickerSelectionMode.single,
                monthCellStyle: DateRangePickerMonthCellStyle(
                    todayTextStyle: CustomTextStyles.titleMediumBluegray900,
                    specialDatesTextStyle: CustomTextStyles
                        .titleMediumBluegray900
                        ?.copyWith(color: Colors.white),
                    specialDatesDecoration: BoxDecoration(
                        shape: BoxShape.circle, color: appTheme.red700),
                    textStyle: CustomTextStyles.titleMediumBluegray900,
                    weekendTextStyle: CustomTextStyles.titleMediumRedA700,
                    //   leadingDatesTextStyle:
                    //       CustomTextStyles.bodyMedium13,
                    //   trailingDatesTextStyle:
                    //       CustomTextStyles.bodyMedium13,
                    blackoutDateTextStyle: CustomTextStyles.titleMediumRedA700),
                monthViewSettings: DateRangePickerMonthViewSettings(
                    numberOfWeeksInView: 6,
                    //   showTrailingAndLeadingDates: true,
                    viewHeaderStyle: DateRangePickerViewHeaderStyle(
                        textStyle: CustomTextStyles.titleMediumBluegray900),
                    firstDayOfWeek: 7,
                    weekendDays: [
                      7
                    ],
                    specialDates: [
                      DateTime(2023, 10, 10),
                      DateTime(2023, 10, 26)
                    ]),
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 3))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  CustomElevatedButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.uploadAttendenceScreen);
                    },
                    text: "lbl_mark_attendance".tr,
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
