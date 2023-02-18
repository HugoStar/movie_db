///Класс данных для авторизации пользователя
class LoginRequestData {
  ///Стандартный конструктор
  LoginRequestData({
    required this.username,
    required this.password,
    // required this.token,
  });

  ///Логин
  String username;

  ///Пароль
  String password;

  // ///Токен
  // String token;

  ///Конвертация в json
  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
        // 'request_token': token,
      };
}
