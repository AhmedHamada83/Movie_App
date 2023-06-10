import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);


  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout With Api service');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send Time With Api service');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Time With Api service');
      case DioErrorType.badCertificate:
        return ServerFailure('BadCertificate Time With Api service');
      case DioErrorType.badResponse:
        return ServerFailure._fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to  Api service Was Canceled');
      case DioErrorType.connectionError:
        return ServerFailure('ConnectionError With Api service');
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketExpiation')) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure('Unexpected Error,Please Try again again');
      
        
    }
  }

  factory ServerFailure._fromResponse(int statuesCode, dynamic response) {
    if (statuesCode == 400 || statuesCode == 401 || statuesCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuesCode == 404) {
      return ServerFailure('Your Request Not Found,Please try again Later');
    } else if (statuesCode == 500) {
      return ServerFailure('Internal server error,Please try again later');
    } else {
      return ServerFailure('Please Try Again');
    }
  }
}
