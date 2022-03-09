import 'package:injectable/injectable.dart';

import 'package:fun_facts_bloc/config/flavors/flavor_config.dart';

@dev
@Injectable(as: FlavorConfig)
class DevConfig implements FlavorConfig {
  @override
  String get flavorName => 'Dev';

  /// Not relevant
  @override
  String get baseUrl => '';

  @override
  bool get enableLogging => false;
}