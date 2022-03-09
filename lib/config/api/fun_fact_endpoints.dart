import 'package:domain/service/api/fun_fact/endpoints.dart';
import 'package:injectable/injectable.dart';

const String v1 = '/api/v1';

@Injectable(as: FunFactEndpoints)
class FunFactsEndpoints implements FunFactEndpoints {
  static const String _base = 'https://uselessfacts.jsph.pl/random.json?language=en';

  @override
  String get base => _base;
}