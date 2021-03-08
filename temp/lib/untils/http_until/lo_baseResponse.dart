import 'package:temp/untils/http_until/LO_ErrorEntity.dart';

class LOBaseResponse<T> {
  int status;
  String msg;
  String errorCode;
  T data;
  LOErrorEntity loErrorEntity;

  LOBaseResponse(
      {this.status, this.msg, this.errorCode, this.data, this.loErrorEntity});

  factory LOBaseResponse.fromJson(json) {
    return LOBaseResponse(
      status: int.parse(json["status"]),
      msg: json["msg"],
      errorCode: json["errorCode"],
      data: LOBaseResponseFactory.changeJsonToT<T>(json["data"]),
      loErrorEntity: null,
    );
  }
}

class LOBaseResponseFactory {
  static T changeJsonToT<T>(json) {
    if (json == null) {
      return null;
    } else {
      return json as T;
    }
  }
}
