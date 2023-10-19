import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

Widget assignmentStatusTable() {
  return DataTable(
    headingRowHeight: 32.v,
    headingRowColor: MaterialStatePropertyAll(theme.colorScheme.primary),
    headingTextStyle: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
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
        "lbl_status".tr,
      )),
    ],
    rows: List.generate(
        20,
        (index) => DataRow(cells: [
              DataCell(Container(
                width: 210.h,
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
              DataCell(
                Text(
                  "Submmited".tr,
                  style:
                      theme.textTheme.labelLarge?.copyWith(color: Colors.green),
                ),
              ),
            ])),
  );
}
