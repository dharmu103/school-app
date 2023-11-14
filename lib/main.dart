import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:school_app/modules/vendor/payment_screen/payment_screen.dart';
import 'firebase_options.dart';
import 'core/app_export.dart';

var firestCamera;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  firestCamera = cameras.first;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(
      //   DevicePreview(
      //     enabled: kReleaseMode,
      //     builder: (context) =>
      MyApp(), // Wrap your app
      //   ),
    );
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      translations: AppLocalization(),
      //   useInheritedMediaQuery: true,
      //   //   locale: DevicePreview.locale(context),
      //   builder: DevicePreview.appBuilder,
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'school_app',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.coverScreen,
      getPages: AppRoutes.pages,
      //   home: PaymentScreen(),
    );
  }
}
