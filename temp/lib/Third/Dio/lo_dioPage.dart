import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Third/Dio/lo_stampDetailModel.dart';
import 'package:temp/untils/http_until/LO_ErrorEntity.dart';
import 'package:temp/untils/http_until/http_until.dart';
import 'package:temp/untils/http_until/lo_baseResponse.dart';

class LODioPage extends StatefulWidget {
  LODioPage({Key key}) : super(key: key);

  @override
  _LODioPageState createState() => _LODioPageState();
}

class _LODioPageState extends State<LODioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio"),
      ),
      body: Container(
        child: ListView(
          children: [
            TextButton(
              child: Text("1"),
              onPressed: () async {
                LOHttpManager().request(
                  method: LOHttpMethod.GET,
                  path: "/applyDetails=0&key=1&key2=2",
                  success: (data) {
                    print(data.data);
                  },
                  error: (error) {
                    print(error.message);
                  },
                );
              },
            ),
            TextButton(
              child: Text("noBlockRequest"),
              onPressed: () async {
                dynamic respon = await LOHttpManager().noBlockRequest(
                    method: LOHttpMethod.GET,
                    path: "/applyDetails=0&key=1&key2=2",
                    params: {"kkkkkk": "kkkkkkkkkk"});

                if (respon is Response) {
                  LOStampDetailModel model =
                      LOStampDetailModel.fromJson(respon.data["data"]);
                  var a = model;
                  print(a.use_result_imgs.imgs[0].path);
                } else {
                  LOErrorEntity ddd = respon;
                  print(ddd.message);
                }
              },
            ),
            TextButton(
              child: Text("noBlockBaseResponseRequest"),
              onPressed: () async {
                LOBaseResponse respon = await LOHttpManager()
                    .noBlockBaseResponseRequest(
                        method: LOHttpMethod.GET,
                        path: "/applyDetails=0&key=1&key2=2",
                        params: {"kkkkkk": "kkkkkkkkkk"});
                if (respon.loErrorEntity == null) {
                  LOStampDetailModel model =
                      LOStampDetailModel.fromJson(respon.data);
                  print(model.use_result_imgs.imgs[0].path);
                } else {
                  print(respon.loErrorEntity.message);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
