import 'package:school_app/modules/cover_screen/cover_screen.dart';
import 'package:school_app/modules/home_screen/binding/home_screen_binding.dart';
import 'package:school_app/modules/sign_in_with_keyboard_screen/sign_in_with_keyboard_screen.dart';
import 'package:school_app/modules/sign_in_with_keyboard_screen/binding/sign_in_with_keyboard_binding.dart';

import 'package:school_app/modules/sign_in_as_screen/binding/sign_in_as_binding.dart';
import 'package:get/get.dart';

import '../modules/home_screen/home_screen_screen.dart';
import '../modules/sign_in_as_screen/sign_in_as_screen.dart';

class AppRoutes {
  static const String coverScreen = '/cover_screen';

  static const String signInWithKeyboardScreen =
      '/sign_in_with_keyboard_screen';

  static const String signInAsScreen = '/sign_in_as_screen';

  static const String homeScreen = '/home_screen';

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
    GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
        bindings: [HomeScreenBinding()])
  ];
}
