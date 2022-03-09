import 'package:api_client/api_client.dart';
import 'package:domain/model/fun_fact.dart';
import 'package:domain/service/api/fun_fact/endpoints.dart';
import 'package:domain/service/api/fun_fact/fun_fact_api.dart';

class FunFactApiImpl implements FunFactApi {
  final FunFactEndpoints endpoints;
  FunFactApiImpl(this.endpoints);

  @override
  Future<ApiResult<FunFact?>> getFunFact() async {
    return ApiClient.instance.request(
        ApiRequest.get(
          endpoints.base,
        ),
      (j) => FunFact.fromJson(j));
  }
}