import 'package:api_client/api_client.dart';

import 'package:domain/model/fun_fact.dart';

abstract class FunFactApi {
  Future<ApiResult<FunFact?>> getFunFact();
}