import 'package:school_app/core/app_export.dart';

class UploadAttendenceController extends GetxController {
  List attendenceList = List.generate(20, (index) => null);

  onTabTrue(index) {
    attendenceList[index] = true;
    update();
  }

  onTabFalse(index) {
    attendenceList[index] = false;
    update();
  }
}
