import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/Third/Dio/lo_stampDetailModel.dart';
import 'package:temp/untils/http_until/LO_ErrorEntity.dart';
import 'package:temp/untils/http_until/http_until.dart';

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
                    // if (data is Map) {
                    //   print("Map");
                    // }
                    // print(data["seal_name"]);
                  },
                  error: (error) {
                    print(error.message);
                  },
                );
              },
            ),
            TextButton(
              child: Text("2"),
              onPressed: () async {
                dynamic respon = await LOHttpManager().getRequest(
                    method: LOHttpMethod.GET,
                    path: "/applyDetails=0&key=1&key2=2",
                    params: {"kkkkkk": "kkkkkkkkkk"});
                if (respon is Response) {
                  print("我是得到的数据${respon.data}");

                  LOStampDetailModel model =
                      LOStampDetailModel.fromJson(respon.data["data"]);
                  var a = model;
                  // print(a.name);
                  // var singleColumListModel = a.columList[0];
                  // print(singleColumListModel.column_name);
                  print(a.use_result_imgs.imgs[0].path);
                  // LOStampDetailModel(name)

                } else {
                  LOErrorEntity ddd = respon;
                  print(ddd.message);
                }
                // print(respon);
                // print(respon.data["status"]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
