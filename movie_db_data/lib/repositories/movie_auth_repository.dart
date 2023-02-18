import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movie_db_data/remote/datasources/movie_auth_datasource.dart';
import 'package:movie_db_data/utils/constants.dart';
import 'package:movie_db_data/utils/data_state.dart';

///Репозиторий для работы с авторизацией
class MovieAuthRepository {
  ///Стандартный конструктор
  const MovieAuthRepository(this._authDatasource);

  final MovieAuthDatasource _authDatasource;

  ///Получить токен
  Future<DataState<String>> _getToken({
    required String username,
    required String password,
  }) async {
    try {
      final tokenHttpResponse = await _authDatasource.getToken(apiKey: kApiKey);
      if (tokenHttpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(tokenHttpResponse.data.token);
      }
      return DataFailed(
        DioError(
          error: tokenHttpResponse.response.statusMessage,
          response: tokenHttpResponse.response,
          requestOptions: tokenHttpResponse.response.requestOptions,
          type: DioErrorType.badResponse,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
