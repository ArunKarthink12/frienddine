import 'dart:async';

import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hotelseatbooking/binding/global_binding.dart';

import 'all_packages.dart';
import 'binding/global_binding.dart';
import 'credentials/login/view/login.dart';
// import 'src/ui/login/view/login.dart';
// import 'src/ui/ui.dart';

// import '../../../../all_packages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var status = prefs.getBool('loginSuccess') ?? false;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            // initialBinding: GlobalBinding(),
            // home: status != null && status == true ? FoodCategories() : LoginUi(),
            home: LoginUi(),
          );
        });
  }
}
