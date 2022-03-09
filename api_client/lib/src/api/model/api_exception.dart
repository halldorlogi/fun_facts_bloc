import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

@freezed
class ApiException with _$ApiException {
  const factory ApiException.requestCancelled(String error) = RequestCancelled;
  const factory ApiException.unauthorisedRequest(String error) =
      UnauthorisedRequest;
  const factory ApiException.badRequest(String error) = BadRequest;
  const factory ApiException.forbidden(String error) = Forbidden;
  const factory ApiException.notFound(String error) = NotFound;
  const factory ApiException.methodNotAllowed(String error) = MethodNotAllowed;
  const factory ApiException.notAcceptable(String error) = NotAcceptable;
  const factory ApiException.requestTimeout(String error) = RequestTimeout;
  const factory ApiException.unprocessableEntity(String error) =
      UnprocessableEntity;
  const factory ApiException.sendTimeout(String error) = SendTimeout;
  const factory ApiException.conflict(String error) = Conflict;
  const factory ApiException.internalServerError(String error) =
      InternalServerError;
  const factory ApiException.notImplemented(String error) = NotImplemented;
  const factory ApiException.serviceUnavailable(String error) =
      ServiceUnavailable;
  const factory ApiException.noInternetConnection(String error) =
      NoInternetConnection;
  const factory ApiException.formatException(String error) = FormatException;
  const factory ApiException.unableToProcess(String error) = UnableToProcess;
  const factory ApiException.defaultError(String error) = DefaultError;
  const factory ApiException.unexpectedError(String error) = UnexpectedError;

  static ApiException getDioException(error) {
    if (error is Exception) {
      try {
        late ApiException networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions =
                  ApiException.requestCancelled(error.response?.data);
              break;
            case DioErrorType.connectTimeout:
              networkExceptions =
                  ApiException.requestTimeout(error.response?.data);
              break;
            case DioErrorType.other:
              networkExceptions =
                  ApiException.noInternetConnection(error.response?.data);
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions =
                  ApiException.sendTimeout(error.response?.data);
              break;
            case DioErrorType.response:
              switch (error.response?.statusCode) {
                case 400:
                  networkExceptions =
                      ApiException.badRequest(error.response?.data);
                  break;
                case 401:
                  networkExceptions =
                      ApiException.unauthorisedRequest(error.response?.data);
                  break;
                case 403:
                  networkExceptions =
                      ApiException.forbidden(error.response?.data);
                  break;
                case 404:
                  networkExceptions =
                      ApiException.notFound(error.response?.data);
                  break;
                case 409:
                  networkExceptions =
                      ApiException.conflict(error.response?.data);
                  break;
                case 408:
                  networkExceptions =
                      ApiException.requestTimeout(error.response?.data);
                  break;
                case 422:
                  networkExceptions =
                      ApiException.unprocessableEntity(error.response?.data);
                  break;
                case 500:
                  networkExceptions =
                      ApiException.internalServerError(error.response?.data);
                  break;
                case 503:
                  networkExceptions =
                      ApiException.serviceUnavailable(error.response?.data);
                  break;
                default:
                  var responseCode = error.response?.statusCode;
                  networkExceptions = ApiException.defaultError(
                    "Received invalid status code: $responseCode",
                  );
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions =
                  ApiException.sendTimeout(error.response?.data);
              break;
          }
        } else if (error is SocketException) {
          networkExceptions =
              const ApiException.noInternetConnection("No internet");
        } else {
          networkExceptions =
              const ApiException.unexpectedError("Unexpected error");
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return const ApiException.formatException("Format exception");
      } catch (_) {
        return const ApiException.unexpectedError("Unexpected error");
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return ApiException.unableToProcess(error.response.data);
      } else {
        return ApiException.unexpectedError(error.response.data);
      }
    }
  }

  static String getErrorMessage(ApiException networkExceptions,
      {String? language = "en"}) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: (error) {
      errorMessage = "Not Implemented";
    }, requestCancelled: (error) {
      errorMessage = "Request Cancelled";
    }, internalServerError: (error) {
      errorMessage = "Internal Server Error";
    }, notFound: (error) {
      errorMessage = "Not found";
    }, serviceUnavailable: (error) {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: (error) {
      errorMessage = "Method Allowed";
    }, badRequest: (error) {
      errorMessage = "Bad request";
    }, forbidden: (error) {
      errorMessage = "Forbidden";
    }, unauthorisedRequest: (error) {
      errorMessage = "Unauthorised request";
    }, unexpectedError: (error) {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: (error) {
      errorMessage = "Connection request timeout";
    }, unprocessableEntity: (error) {
      errorMessage = "Unprocessable entity";
    }, noInternetConnection: (error) {
      errorMessage = language == "is"
          ? "Engin nettenging fannst, vinsamlegast reyndu aftur síðast"
          : "You are not connected to any network, please try again later";
    }, conflict: (error) {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: (error) {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: (error) {
      errorMessage = "Unable to process the data";
    }, defaultError: (error) {
      errorMessage = error;
    }, formatException: (error) {
      errorMessage = "Unexpected error occurred";
    }, notAcceptable: (error) {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }

  static String getCause(ApiException exception) {
    return exception.error;
  }
}
