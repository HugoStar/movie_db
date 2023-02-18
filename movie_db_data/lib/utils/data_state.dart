import 'package:dio/dio.dart';

///Абстракция над полученный из сервера запросом
abstract class DataState<T> {
  ///Стандартный конструктор
  const DataState({this.data, this.error});

  ///Данные
  final T? data;

  ///Ошибка
  final DioError? error;
}

///Абстракция над удачным запросом
class DataSuccess<T> extends DataState<T> {
  ///Стандартный конструктор
  const DataSuccess(T data) : super(data: data);
}

///Абстракция над запросом с ошибкой
class DataFailed<T> extends DataState<T> {
  ///Стандартный конструктор
  const DataFailed(DioError error) : super(error: error);
}
