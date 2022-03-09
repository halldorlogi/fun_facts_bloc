abstract class ApiProvider {
  String? baseUrl;
  late Map<String, dynamic> headers;

  void setHeaders(Map<String, dynamic> headers) {
    this.headers = headers;
  }

  void addHeader(Map<String, dynamic> headers) {
    this.headers.addAll(headers);
  }

  void removeHeader(String key) {
    headers.remove(key);
  }
}
