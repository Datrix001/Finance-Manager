import 'package:easy_localization/easy_localization.dart';
import 'package:finwise/core/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ecidyzhzgwrsshickhge.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVjaWR5emh6Z3dyc3NoaWNraGdlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY4MTY3NjYsImV4cCI6MjA4MjM5Mjc2Nn0.W97Ll6ojbXzanwR6EIDDOeIc-I7rzlWTIWBpdtLlnF9',
  );

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('hi', 'IN')],
      fallbackLocale: Locale('en', 'US'),
      path: 'assets/translations',
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.route,
        );
      },
    );
  }
}
