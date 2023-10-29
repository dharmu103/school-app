import 'package:school_app/core/app_export.dart';

/// A controller class for the AssignmentStatusScreen.
///
/// This class manages the state of the AssignmentStatusScreen, including the
/// current assignmentStatusModelObj
class UploadAssignmentStatusController extends GetxController {
  List assignmentsList = List.generate(20, (index) => null);

  onTabTrue(index) {
    assignmentsList[index] = true;
    update();
  }

  onTabFalse(index) {
    assignmentsList[index] = false;
    update();
  }
}
