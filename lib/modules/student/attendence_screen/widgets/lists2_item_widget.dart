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
      width: 20,
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
                  left: 7,
                  top: 21,
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
            SizedBox(height: 22),
            GetX<AttendenceController>(
              builder: (_) => Text(
                "",
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: 21),
            GetX<AttendenceController>(
              builder: (_) => Text(
                "",
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: 21),
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
            SizedBox(height: 22),
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
