class RequestData {
  final String path;
  final String method;
  final dynamic body;
  final dynamic headers;

  RequestData({
    required this.path,
    required this.method,
    this.body,
    this.headers,
  });

  Map<String, dynamic> toJson() {
    if (method == "GET") {
      return {
        "path": path,
        "method": method,
        "timeStamp": DateTime.now().toIso8601String(),
        "headers": headers
      };
    }

    return {
      "path": path,
      "method": method,
      "timeStamp": DateTime.now().toIso8601String(),
      "body": body,
      "headers": headers,
    };
  }
}

class RequestError {
  final String? path;
  final dynamic data;
  final int? statusCode;
  final String? statusMessage;
  final String? method;

  RequestError({
    this.path,
    this.data,
    this.statusCode,
    this.method,
    this.statusMessage,
  });

  Map<String, dynamic> toJson() {
    return {
      "path": path,
      "method": method,
      "statusCode": statusCode,
      "statusMessage": statusMessage,
      "timeStamp": DateTime.now().toIso8601String(),
      "data": data,
    };
  }
}

class ResponseData {
  final String path;
  final String method;
  final int? statusCode;
  final dynamic data;

  ResponseData({
    required this.path,
    required this.method,
    required this.data,
    required this.statusCode,
  });

  Map<String, dynamic> toJson() {
    return {
      "path": path,
      "method": method.toUpperCase(),
      "statusCode": statusCode,
      "timeStamp": DateTime.now().toIso8601String(),
      "data": data,
    };
  }
}
