import 'package:dio/dio.dart';
import 'package:movie_db_data/remote/data_requests/login_request_data.dart';
import 'package:movie_db_data/remote/datasources/movie_auth_datasource.dart';
import 'package:movie_db_data/utils/constants.dart';

void main() async {
  final dio = Dio();
  final movieAuthDatasource = MovieAuthDatasource(dio);
  final requestToken = await movieAuthDatasource.getToken(apiKey: kApiKey);
  print(requestToken);
  final session = await movieAuthDatasource.getSessionByLogin(
    apiKey: kApiKey,
    loginRequestData: LoginRequestData(
      username: 'HugoStar',
      password: 'Dbrnjh1104',
      // token: requestToken.token,
    ),
  );
  print(session.data.token);
}
