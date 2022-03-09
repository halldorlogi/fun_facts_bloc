import 'package:dio/dio.dart';

import 'logger.dart';

class NetworkLoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    NetworkLogger.logRequest(
      options.method,
      options.path,
      query: options.queryParameters,
      body: options.data,
      headers: options.headers,
    );

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    NetworkLogger.logResponse(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    NetworkLogger.logError(err);
    super.onError(err, handler);
  }
}
