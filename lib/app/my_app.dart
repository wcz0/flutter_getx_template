import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shop_flutter/app/bindings/inital_binding.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:shop_flutter/app/core/values/app_colors.dart';
import 'package:shop_flutter/app/routes/app_pages.dart';
import 'package:shop_flutter/flavors/build_config.dart';
import 'package:shop_flutter/flavors/env_config.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.config;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _envConfig.appName,
      initialRoute: AppPages.initial,
      initialBinding: InitialBinding(),
      getPages: AppPages.routes,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: _getSupportedLocal(),
      theme: ThemeData(
        primarySwatch: AppColors.colorPrimarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primaryColor: AppColors.colorPrimary,
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          )
        )
      ),
      debugShowCheckedModeBanner: BuildConfig.instance.debug,
    );
  }

  List<Locale> _getSupportedLocal() {
    return const [
      Locale('en', ''),
      Locale('zh', ''),
    ];
  }
}
