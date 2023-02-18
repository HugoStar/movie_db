import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

///Токен для получения сессии
@freezed
class RequestToken with _$RequestToken {
  ///Стандартный конструктор
  const factory RequestToken({
    ///Токен
    // ignore: invalid_annotation_target
    @JsonKey(name: 'request_token') required String token,
  }) = _RequestToken;

  ///Инициализация через JSON
  factory RequestToken.fromJson(Map<String, Object?> json) =>
      _$RequestTokenFromJson(json);
}
