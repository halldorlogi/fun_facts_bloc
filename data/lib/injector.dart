import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:data/injector.config.dart';

GetIt getIt = GetIt.instance;

const dev = Environment('dev');
const staging = Environment('staging');
const prod = Environment('prod');

@InjectableInit(preferRelativeImports: false, initializerName: r'$initDataModuleGetIt')
Future<void> configureModuleData(String environment) async {
  await $initDataModuleGetIt(getIt, environment: environment);
}