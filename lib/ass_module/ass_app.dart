import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'langauge_logic.dart';
import 'splash_screen.dart';
import 'theme_logic.dart';

Widget providerAssApp() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeLogic()),
      ChangeNotifierProvider(create: (context) => LanguageLogic()),
    ],
    child: const StatefulAppass(),
  );
}

class StatefulAppass extends StatelessWidget {
  const StatefulAppass({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeMode mode = context.watch<ThemeLogic>().mode;
    return ScreenUtilInit(
      designSize: Size(411.42857142857144, 890.2857142857143),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: mode,
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
