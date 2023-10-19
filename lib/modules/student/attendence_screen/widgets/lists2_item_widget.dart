import '../controller/attendence_controller.dart';

import 'package:flutter/material.dart';
import 'package:school_app/core/app_export.dart';

// ignore: must_be_immutable
class Lists2ItemWidget extends StatelessWidget {
  Lists2ItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  var controller = Get.find<AttendenceController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            GetX<AttendenceController>(
              builder: (_) => Text(
                "Hello, world",
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 21.v,
                ),
                child: GetX<AttendenceController>(
                  builder: (_) => Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.v),
            GetX<AttendenceController>(
              builder: (_) => Text(
                "",
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: 21.v),
            GetX<AttendenceController>(
              builder: (_) => Text(
                "",
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: 21.v),
            Align(
              alignment: Alignment.centerRight,
              child: GetX<AttendenceController>(
                builder: (_) => Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
            SizedBox(height: 22.v),
            GetX<AttendenceController>(
              builder: (_) => Text(
                "",
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
