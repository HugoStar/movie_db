import 'package:movie_db_data/remote/data_requests/login_request_data.dart';
import 'package:movie_db_data/remote/datasources/movie_auth_datasource.dart';
import 'package:movie_db_data/remote/models/auth_data.dart';
import 'package:movie_db_data/utils/constants.dart';
import 'package:movie_db_data/utils/data_state.dart';
import 'package:movie_db_data/utils/respose_checker.dart';

///Репозиторий для работы с авторизацией
class MovieAuthRepository {
  ///Стандартный конструктор
  const MovieAuthRepository(this._authDatasource);

  ///Датасорс для авторизации
  final MovieAuthDatasource _authDatasource;

  ///Авторизация пользователя
  Future<DataState<bool>> authorizationUser({
    required LoginRequestData loginData,
  }) async {
    final token = await _getToken();
    if (token.error != null) return DataFailed(token.error!);
    final userAuth = await _authorizationUser(
      loginData: loginData,
      requestToken: token.data!,
    );
    if (userAuth.error != null) return DataFailed(userAuth.error!);
    return const DataSuccess(true);
  }

  ///Получить токен
  Future<DataState<String>> _getToken() async {
    final tokenHttpResponse = _authDatasource.getToken(apiKey: kApiKey);
    final response = await ResponseChecker<RequestToken>().checkResponse(
      wrapResponse: tokenHttpResponse,
    );
    if (response.data != null) return DataSuccess(response.data!.token);
    return DataFailed(response.error!);
  }

  ///Авторизация по логину
  Future<DataState<bool>> _authorizationUser({
    required LoginRequestData loginData,
    required String requestToken,
  }) async {
    loginData.token = requestToken;
    final authUserResponse = _authDatasource.getSessionByLogin(
      apiKey: kApiKey,
      loginRequestData: loginData,
    );
    final response = await ResponseChecker<RequestToken>().checkResponse(
      wrapResponse: authUserResponse,
    );
    if (response.data != null) return const DataSuccess(true);
    return DataFailed(response.error!);
  }
}
