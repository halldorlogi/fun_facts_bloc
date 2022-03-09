// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data/injector_module.dart' as _i12;
import 'package:data/repository/fun_fact_repository_impl.dart' as _i4;
import 'package:data/service/local_storage/app_storage_impl.dart' as _i9;
import 'package:data/service/local_storage/storage_service_impl.dart' as _i11;
import 'package:domain/repository/fun_fact_repository.dart' as _i3;
import 'package:domain/service/api/api.dart' as _i5;
import 'package:domain/service/local_storage/app_storage.dart' as _i8;
import 'package:domain/service/local_storage/local_storage.dart' as _i6;
import 'package:domain/service/local_storage/storage_service.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initDataModuleGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FunFactRepository>(() =>
      _i4.FunFactRepositoryImpl(get<_i5.Api>(), get<_i6.StorageService>()));
  await gh.factoryAsync<_i7.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i8.AppStorage>(
      () => _i9.AppStorageImpl(get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i10.StorageService>(
      () => _i11.StorageServiceImpl(get<_i8.AppStorage>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
