import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

Widget uploadAssignmentStatusTable() {
  return DataTable(
    headingRowHeight: 32.v,
    headingRowColor: MaterialStatePropertyAll(theme.colorScheme.primary),
    headingTextStyle: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
    columnSpacing: 10,
    decoration: BoxDecoration(),
    columns: [
      DataColumn(
        label: Text(
          "lbl_name".tr,
        ),
      ),
      DataColumn(
          label: Text(
        "Submitted".tr,
      )),
      DataColumn(
          label: Text(
        "Not Submitted".tr,
      )),
    ],
    rows: List.generate(
        20,
        (index) => DataRow(cells: [
              DataCell(Container(
                width: 160.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_muskan_verma".tr,
                      style: CustomTextStyles.bodyMedium_1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
              DataCell(Padding(
                  padding: EdgeInsets.only(),
                  child: Center(
                    child: Container(
                      width: 24,
                      height: 24,
                      padding: EdgeInsets.all(1),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(width: 0.3, color: appTheme.gray400),
                          color: appTheme.gray50),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () => {},
                        child: Container(
                            // width: 23,
                            // height: 23,
                            // padding: EdgeInsets.all(2),
                            // decoration: AppDecoration.outlineBlack.copyWith(
                            //     borderRadius: BorderRadius.circular(30),
                            //     color: theme.colorScheme.primary),
                            ),
                      ),
                    ),
                  ))),
              DataCell(Padding(
                  padding: EdgeInsets.only(),
                  child: Center(
                    child: Container(
                      width: 24,
                      height: 24,
                      padding: EdgeInsets.all(1),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(width: 0.3, color: appTheme.gray400),
                          color: appTheme.gray50),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () => {},
                        child: Container(
                            // width: 23,
                            // height: 23,
                            // padding: EdgeInsets.all(2),
                            // decoration: AppDecoration.outlineBlack.copyWith(
                            //     borderRadius: BorderRadius.circular(30),
                            //     color: theme.colorScheme.primary),
                            ),
                      ),
                    ),
                  ))),
            ])),
  );
}
