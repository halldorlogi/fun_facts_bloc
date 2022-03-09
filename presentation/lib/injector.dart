import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/injector.config.dart';

GetIt getIt = GetIt.instance;

const dev = Environment('dev');
const staging = Environment('staging');
const prod = Environment('prod');

@InjectableInit(
  preferRelativeImports: false,
  initializerName: r'$initPresentationModuleGetIt',
)
Future<void> configureModulePresentation(String environment) async {
  $initPresentationModuleGetIt(getIt, environment: environment);
}