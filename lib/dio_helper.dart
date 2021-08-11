import 'package:dio/dio.dart';

class DioHelper {
  static late Dio _dio;

  static init() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://6105732b4b92a000171c5f06.mockapi.io/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData() async
  {
    return await _dio.get(
      'users',
    );
  }
}
