import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

import 'data_state.dart';
import 'dio_errors.dart';

///Проверка response на наличие ошибок
class ResponseChecker<T> {
  ///Основная функция проверки
  Future<DataState<T>> checkResponse({
    required Future<HttpResponse<T>> wrapResponse,
  }) async {
    try {
      final currentResponse = await wrapResponse;
      if (currentResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(currentResponse.data);
      }
      return DataFailed(
        MovieDioError.getBadResponseError(currentResponse.response),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
