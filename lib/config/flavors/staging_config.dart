import 'package:injectable/injectable.dart';

import 'package:fun_facts_bloc/config/flavors/flavor_config.dart';
import 'package:fun_facts_bloc/dependency_injection/injector.dart';

@staging
@Injectable(as: FlavorConfig)
class StagingConfig implements FlavorConfig {
  @override
  String get flavorName => 'Test';

  @override
  String get baseUrl => '';

  @override
  bool get enableLogging => true;
}
