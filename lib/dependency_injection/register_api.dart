import 'package:injectable/injectable.dart';

import 'package:data/service/api/fun_facts_api.dart';

import 'package:domain/service/api/api.dart';

import 'package:fun_facts_bloc/config/api/api_config.dart';
import 'package:fun_facts_bloc/config/flavors/flavor_config.dart';

@module
abstract class RegisterApi {
  @lazySingleton
  Api api(ApiConfig apiConfig, FlavorConfig config) => FunFactsApi(
    config.baseUrl,
    apiConfig.endpoints,
    enableLogging: config.enableLogging,
  );
}
