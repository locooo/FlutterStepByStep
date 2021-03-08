import 'package:dio/dio.dart';
import 'dart:io';

class LOErrorEntity {
  int status;
  String message;
  LOErrorEntity({this.status, this.message});

  // 错误信息
  static LOErrorEntity createErrorEntity(dynamic error) {
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.CANCEL:
          {
            return LOErrorEntity(status: -1, message: "请求取消");
          }
          break;
        case DioErrorType.CONNECT_TIMEOUT:
          {
            return LOErrorEntity(status: 1004, message: "连接超时");
          }
          break;
        case DioErrorType.SEND_TIMEOUT:
          {
            return LOErrorEntity(status: 1004, message: "请求超时");
          }
          break;
        case DioErrorType.RECEIVE_TIMEOUT:
          {
            return LOErrorEntity(status: 1004, message: "响应超时");
          }
          break;
        case DioErrorType.RESPONSE:
          {
            try {
              int errCode = error.response.statusCode;
              String errmessage = error.response.statusMessage;
              return LOErrorEntity(status: errCode, message: errmessage);
//          switch (errCode) {
//            case 400: {
//              return LOErrorEntity(status: errCode, message: "请求语法错误");
//            }
//            break;
//            case 403: {
//              return LOErrorEntity(status: errCode, message: "服务器拒绝执行");
//            }
//            break;
//            case 404: {
//              return LOErrorEntity(status: errCode, message: "无法连接服务器");
//            }
//            break;
//            case 405: {
//              return LOErrorEntity(status: errCode, message: "请求方法被禁止");
//            }
//            break;
//            case 500: {
//              return LOErrorEntity(status: errCode, message: "服务器内部错误");
//            }
//            break;
//            case 502: {
//              return LOErrorEntity(status: errCode, message: "无效的请求");
//            }
//            break;
//            case 503: {
//              return LOErrorEntity(status: errCode, message: "服务器挂了");
//            }
//            break;
//            case 505: {
//              return LOErrorEntity(status: errCode, message: "不支持HTTP协议请求");
//            }
//            break;
//            default: {
//              return LOErrorEntity(status: errCode, message: "未知错误");
//            }
//          }
            } on Exception catch (_) {
              return LOErrorEntity(status: -1, message: "未知错误");
            }
          }
          break;
        default:
          {
            dynamic e = error.error;
            if (e is SocketException) {
              return LOErrorEntity(status: 1002, message: '网络异常，请检查你的网络！');
            }
            if (e is HttpException) {
              return LOErrorEntity(status: 1003, message: '服务器异常！');
            }
            if (e is FormatException) {
              return LOErrorEntity(status: 1001, message: '数据解析错误!');
            }
            return LOErrorEntity(status: 1000, message: '网络异常，请检查你的网络!');
          }
      }
    } else {
      return LOErrorEntity(status: -1, message: "未知异常");
    }
  }
}
