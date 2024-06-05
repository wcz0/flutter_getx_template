import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  EnvConfig prodConfig = EnvConfig(
    appName: dotenv.env['APP_NAME']!,
    baseUrl: dotenv.env['APP_URL']!,
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    debug: dotenv.env['APP_DEBUG'] == "true" ? true : false,
    envConfig: prodConfig,
  );

  runApp(const MyApp());
}
