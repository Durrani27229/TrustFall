import 'package:flutter/material.dart';
import 'package:loginpage/Screens/loginScreen.dart';
import 'package:loginpage/Screens/splash.dart';
import 'package:loginpage/Utils/color_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
              selectionHandleColor: ColorUtils.white,
              selectionColor: ColorUtils.lightBlue),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
          }),
          hintColor: ColorUtils.txtGrey,
          scaffoldBackgroundColor: ColorUtils.white,
          appBarTheme: AppBarTheme(
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleSpacing: 0,
              titleTextStyle: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.w600,
                  color: ColorUtils.white)),
          //            Commenting button theme because its also getting applied to flat buttons
          //              buttonTheme: ButtonThemeData(
          //                buttonColor: Colors.indigo[800],
          //                height: 40,
          //                shape: RoundedRectangleBorder(
          //                  borderRadius: BorderRadius.circular(30),
          //                  side: BorderSide(color: Theme.of(context).primaryColor),
          //                ),
          //              ),
          //          primaryColorDark: Colors.white,
          //          accentColor: Colors.white,

          brightness: Brightness.light),
      home: splashScreen(),
    );
  }
}
