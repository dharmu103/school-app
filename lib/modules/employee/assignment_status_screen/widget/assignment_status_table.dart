import 'package:flutter/material.dart';
import 'package:school_app/fake_data.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

Widget assignmentStatusTable() {
  return Container(
    width: Get.width,
    child: DataTable(
      headingRowHeight: 0,
      headingRowColor: MaterialStatePropertyAll(theme.colorScheme.primary),
      headingTextStyle:
          theme.textTheme.labelLarge?.copyWith(color: Colors.white),
      columnSpacing: 0,
      decoration: BoxDecoration(),
      columns: [
        DataColumn(
          label: Container(
            width: Get.width * 0.65 - 48,
            child: Text(
              "lbl_name".tr,
            ),
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
                  width: Get.width * 0.65 - 48,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        fakedata[index]["student_name"],
                        style: CustomTextStyles.bodyMedium_1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )),
                DataCell(
                  Text(
                    fakedata[index]["assignment"] ? "Submmited" : "Unsubmmited",
                    style: theme.textTheme.labelLarge?.copyWith(
                        color: fakedata[index]["assignment"]
                            ? Colors.green
                            : Colors.red),
                  ),
                ),
              ])),
    ),
  );
}
