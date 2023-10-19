import 'package:school_app/modules/employee/assignment_status_screen/assignment_status_screen.dart';
import 'package:school_app/modules/employee/employ_hp_screen/binding/employ_home_binding.dart';
import 'package:school_app/modules/employee/employ_hp_screen/employ_home_screen.dart';
import 'package:school_app/modules/employee/student_contact_screen/binding/student_contact_binding.dart';
import 'package:school_app/modules/employee/student_contact_screen/student_contact_screen.dart';
import 'package:school_app/modules/employee/upload_assignment/upload_assignment_screen.dart';
import 'package:school_app/modules/employee/upload_assignment_status_screen/binding/upload_assignment_status_binding.dart';
import 'package:school_app/modules/employee/upload_assignment_status_screen/upload_assignment_status_screen.dart';
import 'package:school_app/modules/employee/upload_attendence/binding/upload_attendence_binding.dart';
import 'package:school_app/modules/employee/upload_circular_screen/binding/upload_circular_binding.dart';
import 'package:school_app/modules/employee/upload_circular_screen/upload_circular_screen.dart';
import 'package:school_app/modules/student/attendence_screen/attendence_screen.dart';
import 'package:school_app/modules/student/attendence_screen/binding/attendence_binding.dart';
import 'package:school_app/modules/common/cover_screen/cover_screen.dart';
import 'package:school_app/modules/student/curricular/currucular/curricular_bindings.dart';
import 'package:school_app/modules/student/home_screen/binding/home_screen_binding.dart';
import 'package:school_app/modules/common/sign_in_with_keyboard_screen/sign_in_with_keyboard_screen.dart';
import 'package:school_app/modules/common/sign_in_with_keyboard_screen/binding/sign_in_with_keyboard_binding.dart';

import 'package:school_app/modules/common/sign_in_as_screen/binding/sign_in_as_binding.dart';
import 'package:get/get.dart';
import 'package:school_app/modules/student/student_issue_screen/student_issue_screen.dart';
import 'package:school_app/modules/student/student_transaction/controller/student_transaction_controller.dart';
import 'package:school_app/modules/student/student_worksheet_screen/student_worksheet.dart';
import 'package:school_app/modules/vendor/passbook/passbook_screen.dart';
import 'package:school_app/modules/vendor/payment_screen/binding/payment_binding.dart';
import 'package:school_app/modules/vendor/payment_screen/payment_screen.dart';
import 'package:school_app/modules/vendor/transaction_screen/binding/transaction_binding.dart';
import 'package:school_app/modules/vendor/transaction_screen/transaction_screen.dart';
import 'package:school_app/modules/vendor/vendor_hp_screen/binding/vendor_hp_binding.dart';
import 'package:school_app/modules/vendor/vendor_hp_screen/vendor_hp_screen.dart';

import '../modules/employee/assignment_status_screen/binding/assignment_status_binding.dart';
import '../modules/employee/upload_attendence/upload_attendence_screen.dart';
import '../modules/student/curricular/currucular/curricular_page.dart';
import '../modules/student/home_screen/home_screen.dart';
import '../modules/common/sign_in_as_screen/sign_in_as_screen.dart';
import '../modules/student/student_transaction/bindings/student_transaction_binding.dart';
import '../modules/student/student_transaction/student_transaction_screen.dart';

class AppRoutes {
  static const String coverScreen = '/cover_screen';
  static const String signInWithKeyboardScreen =
      '/sign_in_with_keyboard_screen';
  static const String signInAsScreen = '/sign_in_as_screen';

//   Student Routes

  static const String homeScreen = '/home_screen';
  static const String attendenceScreen = '/attendence_screen';
  static const String carricularScreen = '/carricular_screen';
  static const String studentWorksheetScreen = '/student_worksheet_screen';
  static const String studentIssueScreen = '/student_issue_screen';
  static const String studentTransactionScreen = '/student_transaction_screen';
  static const String studentTestReportScreen = '/student_test_report_screen';

//   Employee Routes

  static const String employeeScreen = '/employee_screen';
  static const String uploadAttendenceScreen = '/upload_attendence_screen';
  static const String studentContactScreen = '/student_contact_screen';
  static const String uploadResultScreen = '/upload_result_screen';
  static const String uploadCurricularScreen = '/upload_curricular_screen';
  static const String uploadAssignmentScreen = '/upload_assignment_screen';
  static const String assignmentStatusScreen =
      '/upload_assignment_status_screen';
  static const String uploadAssignmentStatusScreen =
      '/assignment_status_screen';

//   vendor Routes

  static const String vendorScreen = '/vendor_screen';
  static const String vendorPaymentScreen = '/vendor_payment_screen';
  static const String vendorTransactionScreen = '/vendor_transaction_screen';
  static const String vendorPassbookScreen = '/vendor_passbook_screen';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: coverScreen,
      page: () => CoverScreen(),
    ),
    GetPage(
      name: signInWithKeyboardScreen,
      page: () => SignInWithKeyboardScreen(),
      bindings: [
        SignInWithKeyboardBinding(),
      ],
    ),
    GetPage(
      name: signInAsScreen,
      page: () => SignInAsScreen(),
      bindings: [
        SignInAsBinding(),
      ],
    ),

    // student Routes

    GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
        bindings: [HomeScreenBinding()]),
    GetPage(
        name: attendenceScreen,
        page: () => AttendenceScreen(),
        bindings: [AttendenceBinding()]),
    GetPage(
        name: carricularScreen,
        page: () => CurricularScreen(),
        bindings: [CurricularBindings()]),
    GetPage(
        name: studentTransactionScreen,
        page: () => StudentTransactionScreen(),
        bindings: [StudentTransactionBinding()]),
    GetPage(
        name: studentIssueScreen,
        page: () => StudentIssueScreen(),
        bindings: []),
    GetPage(
        name: studentWorksheetScreen,
        page: () => StudentWorksheetScreen(),
        bindings: []),

    // Employee Screen

    GetPage(
        name: employeeScreen,
        page: () => EmployHomeScreen(),
        bindings: [EmployHpBinding()]),

    GetPage(
        name: uploadAttendenceScreen,
        page: () => UploadAttendenceScreen(),
        bindings: [UploadAttendenceBindings()]),
    GetPage(
        name: studentContactScreen,
        page: () => StudentContactScreen(),
        bindings: [StudentContactBinding()]),

    // GetPage(
    //     name: uploadResultScreen,
    //     page: () => Uplo,
    //     bindings: [UploadCircularBinding()]),
    GetPage(
        name: uploadCurricularScreen,
        page: () => UploadCircularScreen(),
        bindings: [UploadCircularBinding()]),
    GetPage(
      name: uploadAssignmentScreen,
      page: () => UploadAssignmentScreen(),
    ),
    GetPage(
        name: uploadAssignmentStatusScreen,
        page: () => UploadAssignmentStatusScreen(),
        bindings: [UploadAssignmentStatusBinding()]),

    GetPage(
        name: assignmentStatusScreen,
        page: () => AssignmentStatusScreen(),
        bindings: [AssignmentStatusBinding()]),

    //  Vendor
    GetPage(
        name: vendorScreen,
        page: () => VendorHpScreen(),
        bindings: [VendorHpBinding()]),

    GetPage(
        name: vendorPaymentScreen,
        page: () => PaymentScreen(),
        bindings: [PaymentBinding()]),

    GetPage(
        name: vendorTransactionScreen,
        page: () => TransactionScreen(),
        bindings: [TransactionBinding()]),

    GetPage(
        name: vendorPassbookScreen,
        page: () => PassbookScreen(),
        bindings: [TransactionBinding()]),
    //       GetPage(
    //     name: vendorPassbookScreen,
    //     page: () => VendorPassbookScreen(),
    //     bindings: [VendorPassbookBinding()]),
  ];
}
