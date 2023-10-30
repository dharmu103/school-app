import 'package:progress_state_button/progress_button.dart';
import 'package:school_app/core/app_export.dart';

import '../../../../widgets/dialogs/upload_success_dialog.dart';

/// A controller class for the AssignmentStatusScreen.
///
/// This class manages the state of the AssignmentStatusScreen, including the
/// current assignmentStatusModelObj
class UploadAssignmentStatusController extends GetxController {
  List assignmentsList = List.generate(20, (index) => null);
  ButtonState btnState = ButtonState.idle;
  onTabTrue(index) {
    assignmentsList[index] = true;
    update();
  }

  onTabFalse(index) {
    assignmentsList[index] = false;
    update();
  }

  void onAssignmentStatusUpload() async {
    btnState = ButtonState.loading;
    update();
    await Future.delayed(Duration(seconds: 1));
    btnState = ButtonState.idle;
    update();
    Get.dialog(UploadDailogWidget());
  }
}
