
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
        validateStatus: (int? status) {
          if (status != null) {
            if (status >= 100 && status <= 511) {
              return true;
            } else {
              return false;
            }
          } else {
            return false;
          }
        },
        baseUrl: "https://www.googleapis.com/books/v1/",
        receiveDataWhenStatusError: true));
  }

  static Future<Response> get({
    required String url,
    Map<String, dynamic>? query,
  }) async {    
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> post({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      "Authorization": "Bearer $token",
    };

    return await dio.post(url, data: data, queryParameters: query);
  }

  static Future<Response> put({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      "Authorization": "Bearer $token",
    };
    return await dio.put(url, data: data, queryParameters: query);
  }

  static Future<Response> delet({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      "Authorization": "Bearer $token",
    };
    return await dio.delete(url, data: data, queryParameters: query);
  }

  static Future<Response> realTimeGet({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      "Authorization": "Bearer $token",
    };
    final rs = await dio.get(
      url,
      options: Options(
        responseType: ResponseType.stream,
      ),
    );

    return rs;
  }


}
