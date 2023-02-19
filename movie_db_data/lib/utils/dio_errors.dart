import 'package:dio/dio.dart';

///Класс кастомных ошибок для DIO
class MovieDioError {
  ///Генерация ошибки badResponse
  static DioError getBadResponseError(Response<dynamic> response) {
    return DioError(
      error: response.statusMessage,
      response: response,
      requestOptions: response.requestOptions,
      type: DioErrorType.badResponse,
    );
  }
}
