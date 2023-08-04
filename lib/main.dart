import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:social_app/provider/custom_provider.dart';
import 'package:social_app/screen/navigation_bar/navigation_bar_screen.dart';
import 'package:social_app/screen/splash_screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CustomProvider>(
          create: (_) => CustomProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(415, 890),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          );
        },
        child: NavigationBarScreen(),
      ),
    );
  }
}