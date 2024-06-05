import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:shop_flutter/app/network/exceptions/api_exception.dart';

import '/app/network/dio_provider.dart';
import '/app/network/error_handlers.dart';
import '/app/network/exceptions/base_exception.dart';
import '/flavors/build_config.dart';

abstract class BaseRemoteSource {
  Dio get dioClient => DioProvider.dioWithHeaderToken;

  final logger = BuildConfig.instance.config.logger;

  Future<T> callApiWithErrorParser<T>(Future<Response<T>> api) async {
    try {
      Response<T> response = await api;

      Map<String, dynamic> data = response.data as Map<String, dynamic>;
      if (response.statusCode != HttpStatus.ok || data['status'] != 0) {
        throw ApiException(
          httpCode: response.statusCode!,
          status: data['status'] as String,
          message: data['msg'],
        );
      }

      return data as T;
    } on DioException catch (dioError) {
      Exception exception = handleDioError(dioError);
      logger.e(
          "Throwing error from repository: >>>>>>> $exception : ${(exception as BaseException).message}");
      throw exception;
    } catch (error) {
      logger.e("Generic error: >>>>>>> $error");

      if (error is BaseException) {
        rethrow;
      }

      throw handleError("$error");
    }
  }
}
