import '/flavors/env_config.dart';

class BuildConfig {
  late final bool debug;
  late final EnvConfig config;
  bool _lock = false;

  static final BuildConfig instance = BuildConfig._internal();

  BuildConfig._internal();

  factory BuildConfig.instantiate({
    required bool debug,
    required EnvConfig envConfig,
  }) {
    if (instance._lock) return instance;

    instance.debug = debug;
    instance.config = envConfig;
    instance._lock = true;

    return instance;
  }
}
