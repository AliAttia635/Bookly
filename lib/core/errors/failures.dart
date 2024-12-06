import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with Server");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with Server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with Server");

      case DioExceptionType.badCertificate:
        return ServerFailure("Opps there was badCertificate");

      case DioExceptionType.badResponse:
        return ServerFailure.badResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was Cancelled!");

      case DioExceptionType.connectionError:
        return ServerFailure("No Interner Connection, please try again!");

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure("No Interner Connection, please try again!");
        }
        return ServerFailure("Unexpected Error, please try again!");
      default:
        return ServerFailure(
            "Opps there was an error, Please try again later!");
    }
  }

  factory ServerFailure.badResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please try again later! ');
    } else {
      return ServerFailure("Opps there was an error, Please try again later!");
    }
  }
}
