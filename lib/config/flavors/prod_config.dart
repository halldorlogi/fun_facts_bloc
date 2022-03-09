import 'package:injectable/injectable.dart';
import 'package:fun_facts_bloc/config/flavors/flavor_config.dart';

@prod
@Injectable(as: FlavorConfig)
class ProdConfig implements FlavorConfig {
  @override
  String get flavorName => 'Prod';

  /// Not relevant
  @override
  String get baseUrl => '';

  @override
  bool get enableLogging => true;
}
