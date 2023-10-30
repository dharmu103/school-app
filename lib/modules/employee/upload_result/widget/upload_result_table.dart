import 'package:flutter/material.dart';
import 'package:school_app/fake_data.dart';
import 'package:school_app/modules/employee/upload_result/controller/upload_result_controller.dart';

import '../../../../core/app_export.dart';

class UploadResultTable extends GetWidget<UploadResultController> {
  const UploadResultTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: DataTable(
              headingRowHeight: 0,
              headingRowColor:
                  MaterialStatePropertyAll(theme.colorScheme.primary),
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
                  "Out of 100".tr,
                )),
                DataColumn(
                    label: Text(
                  "lbl_marks".tr,
                )),
              ],
              rows: List.generate(
                  20,
                  (index) => DataRow(cells: [
                        DataCell(Container(
                          width: 210,
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
                          Padding(
                              padding: EdgeInsets.only(right: 26),
                              child:
                                  Obx(() => Text(controller.totalMarks.value))),
                        ),
                        DataCell(Padding(
                            padding: EdgeInsets.only(),
                            child: Container(
                              width: 50,
                              height: 24,
                              padding: EdgeInsets.all(1),
                              child: TextFormField(
                                style: CustomTextStyles.bodyMedium_1,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(),
                              ),
                            ))),
                      ])),
            ),
          ),
        ),
      ],
    );
  }
}
