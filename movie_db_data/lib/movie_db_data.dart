import 'package:dio/dio.dart';
import 'package:movie_db_data/remote/data_requests/login_request_data.dart';
import 'package:movie_db_data/remote/datasources/movie_auth_datasource.dart';
import 'package:movie_db_data/repositories/movie_auth_repository.dart';

void main() async {
  final dio = Dio();
  final authDatasource = MovieAuthDatasource(dio);
  final movieAuthRepository = MovieAuthRepository(authDatasource);
  final loginRequestData = LoginRequestData(
    username: 'HugoStar',
    password: 'Dbrnjh1104',
  );

  final isAuth =
      await movieAuthRepository.authorizationUser(loginData: loginRequestData);

  if (isAuth.error != null) {
    print(isAuth.error);
  } else {
    print('auth is done');
  }
}
