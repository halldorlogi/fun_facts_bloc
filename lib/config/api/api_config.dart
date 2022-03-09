import 'package:get_it/get_it.dart';

import 'package:injectable/injectable.dart';

import 'package:fun_facts_bloc/config/flavors/flavor_config.dart';

import 'package:domain/service/api/api_endpoints.dart';
import 'package:domain/service/api/fun_fact/endpoints.dart';

abstract class ApiConfig {
  String get baseUrl;
  ApiEndpoints get endpoints;
}

@Injectable(as: ApiConfig)
class FunFactsApiConfig implements ApiConfig {

  @override
  String get baseUrl => GetIt.I.get<FlavorConfig>().baseUrl;

  @override
  ApiEndpoints get endpoints => ApiEndpoints(
    GetIt.I.get<FunFactEndpoints>(),
  );
}