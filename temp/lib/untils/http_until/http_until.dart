import 'package:dio/dio.dart';
import 'package:temp/untils/http_until/LO_ErrorEntity.dart';
import 'package:temp/untils/http_until/lo_baseResponse.dart';

class LOHttpManager {
  Dio _dio;
  static LOHttpManager _instance = LOHttpManager._internal();

  factory LOHttpManager() => _instance;

  LOHttpManager._internal() {
    if (_dio == null) {
      BaseOptions options = BaseOptions(
        baseUrl:
            "https://www.fastmock.site/mock/ef797714999a35faac73374aeb8dc18c/flutter1",
        contentType: Headers.jsonContentType,
        receiveDataWhenStatusError: false,
        connectTimeout: 30000,
        receiveTimeout: 30000,
        method: LOHttpMethodValue[LOHttpMethod.GET],
        headers: loHttpHeaders,
        // responseType: ResponseType.plain,
      );
      _dio = Dio(options);
      // _dio.interceptors.add(LOLogInterceptor());
      // if (bool.fromEnvironment("dart.vm.product") == false) {
      //   _dio.interceptors.add(LogInterceptor(responseBody: false));
      // }

      _dio.interceptors.add(
        InterceptorsWrapper(onRequest: (options, handler) {
          // Do something before request is sent
          return handler.next(options); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        }, onResponse: (response, handler) {
          // Do something with response data
          return handler.next(response); // continue
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        }, onError: (DioError e, handler) {
          // Do something with response error
          return handler.next(e); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
        }),
      );
    }
  }

  Future request<T>(
      {LOHttpMethod method,
      String path,
      Function(Response) success,
      Function(LOErrorEntity) error,
      Map<String, dynamic> params,
      String baseUrl,
      CancelToken cancelToken}) async {
    try {
      Response response = await _dio.request(
        path,
        queryParameters: params,
        options: Options(method: LOHttpMethodValue[method]),
        cancelToken: cancelToken ?? cancelToken,
      );

      if (response != null) {
        success(response);
      } else {
        error(LOErrorEntity.createErrorEntity(
            LOErrorEntity(status: -1, message: "未知错误")));
      }
    } on DioError catch (e) {
      error(LOErrorEntity.createErrorEntity(e));
    }
  }

  Future baseResponseRequest<T>(
      {LOHttpMethod method,
      String path,
      Function(LOBaseResponse) success,
      Function(LOBaseResponse) error,
      Map<String, dynamic> params,
      String baseUrl,
      CancelToken cancelToken}) async {
    LOBaseResponse baseResponse;
    try {
      Response response = await _dio.request(
        path,
        queryParameters: params,
        options: Options(method: LOHttpMethodValue[method]),
        cancelToken: cancelToken ?? cancelToken,
      );

      if (response != null) {
        baseResponse = LOBaseResponse<T>.fromJson(response.data);
        if (baseResponse.status == 1) {
          success(baseResponse.data);
        } else {
          baseResponse.loErrorEntity = LOErrorEntity(
              status: baseResponse.status, message: baseResponse.msg);
          error(baseResponse);
        }
      } else {
        baseResponse.loErrorEntity = LOErrorEntity(status: -1, message: "未知错误");
        error(baseResponse);
      }
    } on DioError catch (e) {
      baseResponse.loErrorEntity = LOErrorEntity.createErrorEntity(e);
      error(baseResponse);
    }
  }

  Future noBlockRequest(
      {LOHttpMethod method,
      String path,
      Map<String, dynamic> params,
      CancelToken cancelToken}) async {
    try {
      Response response = await _dio.request(path,
          queryParameters: params,
          options: Options(method: LOHttpMethodValue[method]));
      return response;
    } on DioError catch (e) {
      return LOErrorEntity.createErrorEntity(e);
    }
  }

  Future noBlockBaseResponseRequest<T>(
      {LOHttpMethod method,
      String path,
      Map<String, dynamic> params,
      CancelToken cancelToken}) async {
    LOBaseResponse baseResponse;
    try {
      Response response = await _dio.request(path,
          queryParameters: params,
          options: Options(method: LOHttpMethodValue[method]));
      if (response != null) {
        baseResponse = LOBaseResponse<T>.fromJson(response.data);
        if (baseResponse.status == 1) {
          return baseResponse;
        } else {
          baseResponse.loErrorEntity = LOErrorEntity(
              status: baseResponse.status, message: baseResponse.msg);
          return baseResponse;
        }
      } else {
        baseResponse.loErrorEntity = LOErrorEntity(status: -1, message: "未知错误");
        return baseResponse;
      }
    } on DioError catch (e) {
      baseResponse.loErrorEntity = LOErrorEntity.createErrorEntity(e);
      return baseResponse;
    }
  }
}

//自定义header
/// 自定义Header
Map<String, dynamic> loHttpHeaders = {
  'Accept': 'application/json,*/*',
  'Content-Type': 'application/json',
};

//请求类型
enum LOHttpMethod { GET, POST, DELETE, PUT, PATCH }
const LOHttpMethodValue = {
  LOHttpMethod.GET: "get",
  LOHttpMethod.POST: "post",
  LOHttpMethod.DELETE: "delete",
  LOHttpMethod.PUT: "put",
  LOHttpMethod.PATCH: "patch",
};
