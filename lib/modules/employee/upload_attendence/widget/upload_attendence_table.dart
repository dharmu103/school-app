import 'package:flutter/material.dart';
import 'package:school_app/fake_data.dart';
import 'package:school_app/modules/employee/upload_attendence/controller/upload_attendence_controller.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

Widget uploadAttendenceTable() {
  return Container(
    width: Get.width,
    child: DataTable(
        headingRowHeight: 0.v,
        headingRowColor: MaterialStatePropertyAll(theme.colorScheme.primary),
        headingTextStyle:
            theme.textTheme.labelLarge?.copyWith(color: Colors.white),
        columnSpacing: 0,
        decoration: BoxDecoration(),
        columns: [
          DataColumn(
            label: Text(
              "lbl_name".tr,
            ),
          ),
          DataColumn(
              label: Text(
            "lbl_present".tr,
          )),
          DataColumn(
              label: Text(
            "lbl_absent".tr,
          )),
        ],
        rows: List.generate(fakedata.length, (index) {
          return DataRow(
            cells: [
              DataCell(Container(
                width: 210.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      fakedata[index]['student_name'],
                      style: CustomTextStyles.bodyMedium_1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
              DataCell(Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: GetBuilder<UploadAttendenceController>(
                    builder: (_) {
                      return Container(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.all(1),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(width: 0.3, color: appTheme.gray400),
                            color: _.attendenceList[index] == null ||
                                    _.attendenceList[index] == false
                                ? appTheme.gray50
                                : theme.colorScheme.primary),
                        child: GetBuilder<UploadAttendenceController>(
                          init: UploadAttendenceController(),
                          initState: (_) {},
                          builder: (_) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                _.onTabTrue(index);
                              },
                              child: Container(
                                width: 23,
                                height: 23,
                                padding: EdgeInsets.all(2),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: appTheme.gray100),
                                    color: _.attendenceList[index] == null ||
                                            _.attendenceList[index] == false
                                        ? appTheme.gray50
                                        : theme.colorScheme.primary),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ))),
              DataCell(Padding(
                  padding: EdgeInsets.only(),
                  child: GetBuilder<UploadAttendenceController>(
                    builder: (_) {
                      return Container(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.all(1),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(width: 0.3, color: appTheme.gray400),
                            color: _.attendenceList[index] == null ||
                                    _.attendenceList[index] == true
                                ? appTheme.gray50
                                : theme.colorScheme.primary),
                        child: GetBuilder<UploadAttendenceController>(
                          init: UploadAttendenceController(),
                          initState: (_) {},
                          builder: (_) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                _.onTabFalse(index);
                              },
                              child: Container(
                                width: 23,
                                height: 23,
                                padding: EdgeInsets.all(2),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: appTheme.gray100),
                                    color: _.attendenceList[index] == null ||
                                            _.attendenceList[index] == true
                                        ? appTheme.gray50
                                        : theme.colorScheme.primary),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ))),
            ],
          );
        })),
  );
}
