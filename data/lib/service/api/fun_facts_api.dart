import 'package:api_client/api_client.dart';

import 'package:domain/service/api/api.dart';
import 'package:domain/service/api/api_endpoints.dart';
import 'package:domain/service/api/fun_fact/fun_fact_api.dart';
import 'package:data/service/api/fun_fact/fun_fact_api_impl.dart';

class FunFactsApi implements Api {
  FunFactsApi(
      String baseUrl,
      this.endpoints, {
        bool enableLogging = false,
      }) {
    init(baseUrl: baseUrl, enableLogging: enableLogging);
  }

  final ApiEndpoints endpoints;

  static const Map<String, Object> _defaultHeaders = {'Content-Type': 'application/json'};

  @override
  void init({required String baseUrl, bool enableLogging = false}) {
    ApiClient.instance.init(
      baseUrl: baseUrl,
      headers: _defaultHeaders,
      interceptors: [
        ...enableLogging ? [NetworkLoggerInterceptor()] : []
      ],
    );
  }

  @override
  FunFactApi get funFactApi => FunFactApiImpl(endpoints.funFactEndpoints);
}
