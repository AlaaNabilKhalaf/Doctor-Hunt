import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Core/Networking/bloc_observer/bloc_observer.dart';
import 'Features/OnBoarding/Presentation/Screens/on_boarding_view.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const DoctorHunt(), // Wrap your app
    ),
  );
}

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // This Method is controlling the status bar appearance.
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

  // ScreenUtilInit is for resizing the widgets.
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
    builder: (child, _ ){
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnBoardingView(),

        );
    }
    );
  }
}


