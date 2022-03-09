// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:domain/repository/fun_fact_repository.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:presentation/blocs/fun_fact/fun_fact_bloc.dart' as _i3;
import 'package:presentation/blocs/fun_fact_loader/fun_fact_loader_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initPresentationModuleGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.FunFactBloc>(
      () => _i3.FunFactBloc(get<_i4.FunFactRepository>()));
  gh.factory<_i5.FunFactLoaderBloc>(
      () => _i5.FunFactLoaderBloc(get<_i4.FunFactRepository>()));
  return get;
}
