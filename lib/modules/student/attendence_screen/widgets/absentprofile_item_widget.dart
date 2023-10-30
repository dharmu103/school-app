// import '../../../widgets/custom_image_view.dart';
// import '../controller/attendence_controller.dart';
// import '../models/absentprofile_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:school_app/core/app_export.dart';

// // ignore: must_be_immutable
// class AbsentprofileItemWidget extends StatelessWidget {
//   AbsentprofileItemWidget(
//     this.absentprofileItemModelObj, {
//     Key? key,
//   }) : super(
//           key: key,
//         );

//   AbsentprofileItemModel absentprofileItemModelObj;

//   var controller = Get.find<AttendenceController>();

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 47,
//       width: 343,
//       child: Stack(
//         alignment: Alignment.centerLeft,
//         children: [
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadiusStyle.roundedBorder10,
//               ),
//               child: CustomImageView(
//                 svgPath: ImageConstant.imgRectangleRed700,
//                 height: 46,
//                 width: 342,
//               ),
//             ),
//           ),
//           CustomImageView(
//             svgPath: ImageConstant.imgSignalRed700,
//             height: 47,
//             width: 16,
//             alignment: Alignment.centerLeft,
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(28, 9, 11, 9),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                       top: 1,
//                       bottom: 3,
//                     ),
//                     child: Obx(
//                       () => Text(
//                         absentprofileItemModelObj.absentText!.value,
//                         overflow: TextOverflow.ellipsis,
//                         style: CustomTextStyles.titleSmallGray900,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 6,
//                       vertical: 3,
//                     ),
//                     decoration: AppDecoration.fillRed.copyWith(
//                       borderRadius: BorderRadiusStyle.roundedBorder14,
//                     ),
//                     child: Obx(
//                       () => Text(
//                         absentprofileItemModelObj.dateText!.value,
//                         overflow: TextOverflow.ellipsis,
//                         style: CustomTextStyles.bodyMediumOnErrorContainer13,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
