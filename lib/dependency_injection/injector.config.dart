// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:domain/service/api/api.dart' as _i10;
import 'package:domain/service/api/fun_fact/endpoints.dart' as _i8;
import 'package:fun_facts_bloc/config/api/api_config.dart' as _i3;
import 'package:fun_facts_bloc/config/api/fun_fact_endpoints.dart' as _i9;
import 'package:fun_facts_bloc/config/flavors/dev_config.dart' as _i7;
import 'package:fun_facts_bloc/config/flavors/flavor_config.dart' as _i4;
import 'package:fun_facts_bloc/config/flavors/prod_config.dart' as _i6;
import 'package:fun_facts_bloc/config/flavors/staging_config.dart' as _i5;
import 'package:fun_facts_bloc/dependency_injection/register_api.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _staging = 'staging';
const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initAppModuleGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerApi = _$RegisterApi();
  gh.factory<_i3.ApiConfig>(() => _i3.FunFactsApiConfig());
  gh.factory<_i4.FlavorConfig>(() => _i5.StagingConfig(),
      registerFor: {_staging});
  gh.factory<_i4.FlavorConfig>(() => _i6.ProdConfig(), registerFor: {_prod});
  gh.factory<_i4.FlavorConfig>(() => _i7.DevConfig(), registerFor: {_dev});
  gh.factory<_i8.FunFactEndpoints>(() => _i9.FunFactsEndpoints());
  gh.lazySingleton<_i10.Api>(
      () => registerApi.api(get<_i3.ApiConfig>(), get<_i4.FlavorConfig>()));
  return get;
}

class _$RegisterApi extends _i11.RegisterApi {}
