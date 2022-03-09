import 'package:domain/service/api/fun_fact/fun_fact_api.dart';

abstract class Api {
  void init({
    required String baseUrl,
    bool enableLogging = false,
  });

  FunFactApi get funFactApi;
}