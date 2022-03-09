
import 'package:data/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/injector.config.dart';
import 'package:fun_facts_bloc/dependency_injection/injector.config.dart';

GetIt getIt = GetIt.instance;

const dev = Environment('dev');
const staging = Environment('staging');
const prod = Environment('prod');

@InjectableInit(preferRelativeImports: false, initializerName: r'$initAppModuleGetIt')
Future<void> configureModuleApp(String environment) async {
  await $initDataModuleGetIt(getIt, environment: environment);
  $initPresentationModuleGetIt(getIt, environment: environment);
  $initAppModuleGetIt(getIt, environment: environment);
}
