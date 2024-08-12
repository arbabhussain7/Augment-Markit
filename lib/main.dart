import 'package:augment/constants/colors.dart';
import 'package:augment/views/splash_screen.dart';
// import 'package:augment/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: orangeColor,
            scaffoldBackgroundColor: whiteColor,
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: orangeColor,
                selectionColor: orangeColor.withOpacity(0.5),
                selectionHandleColor: orangeColor),
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: Scaffold(
            backgroundColor: whiteColor,
            body: SplashScreen(),
          ),
        );
      },
    );
  }
}
