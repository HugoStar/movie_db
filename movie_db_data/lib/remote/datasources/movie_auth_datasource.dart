import 'package:dio/dio.dart';
import 'package:movie_db_data/remote/data_requests/login_request_data.dart';
import 'package:movie_db_data/remote/models/auth_data.dart';
import 'package:movie_db_data/utils/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_auth_datasource.g.dart';

///Класс авторизации
@RestApi(baseUrl: kBaseUrl)
abstract class MovieAuthDatasource {
  ///Стандартный конструктор
  factory MovieAuthDatasource(Dio dio, {String baseUrl}) = _MovieAuthDatasource;

  ///Авторизация пользователя
  @GET('/authentication/token/new')
  Future<HttpResponse<RequestToken>> getToken({
    @Query('api_key') required String apiKey,
  });

  ///Авторизация пользователя по логину
  @POST('/authentication/token/validate_with_login')
  Future<HttpResponse<RequestToken>> getSessionByLogin({
    @Query('api_key') required String apiKey,
    @Body() required LoginRequestData loginRequestData,
  });
}
