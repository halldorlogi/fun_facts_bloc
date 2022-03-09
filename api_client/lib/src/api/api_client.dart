import 'package:api_client/src/api/model/api_exception.dart';
import 'package:api_client/src/api/model/api_result.dart';
import 'package:api_client/src/api/request.dart';
import 'package:dio/dio.dart';

class ApiClient {
  ApiClient._privateConstructor();
  static final ApiClient _instance = ApiClient._privateConstructor();
  static ApiClient get instance => _instance;

  late Dio dio;

  void init({
    required String baseUrl,
    required Map<String, Object> headers,
    List<Interceptor>? interceptors,
  }) async {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ));
    if (interceptors != null) {
      _instance.dio.interceptors.addAll(interceptors);
    }
  }

  /// Helper method to handle the request response and errors
  Future<ApiResult<T>> request<T>(
    ApiRequest request,
    Function(dynamic) fromJson, {
    bool showGenericError = true,
  }) async {
    try {
      final response = await _instance.dio.request(
        request.url,
        data: request.body,
        queryParameters: request.query,
        options: Options(method: request.method, headers: request.headers),
      );
      return ApiResult.success(data: fromJson(response.data));
    } catch (e) {
      final exception = ApiException.getDioException(e);
      return ApiResult.failure(error: exception);
    }
  }

  Future<String?> requestUri(String uri, Dio httpClient) async {
    final response = await httpClient.requestUri(Uri.parse(uri));

    return response.data;
  }
}
