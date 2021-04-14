import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:temp/untils/log/lo_log.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class LOWebPage extends StatefulWidget {
  LOWebPage({Key? key}) : super(key: key);

  @override
  _LOWebPageState createState() => _LOWebPageState();
}

class _LOWebPageState extends State<LOWebPage> {
  late InAppWebViewController _webContrlller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter_inappwebview"),
      ),
      body: Column(
        children: [
          Container(
            width: ScreenUtil.getScreenW(context),
            height: ScreenUtil.getScreenH(context) - 200,
            child: InAppWebView(
                // initialUrlRequest:
                //     URLRequest(url: Uri.parse("https://www.baidu.com")),
                initialData: InAppWebViewInitialData(data: """
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    </head>
    <body>
        <h1>JavaScript Handlers (Channels) TEST</h1>
        <script>
            window.addEventListener("flutterInAppWebViewPlatformReady", function(event) {
                window.flutter_inappwebview.callHandler('handlerFoo')
                  .then(function(result) {
                    // print to the console the data coming
                    // from the Flutter side.
                    console.log(JSON.stringify(result));
                    
                    window.flutter_inappwebview
                      .callHandler('handlerFooWithArgs', 1, true, ['bar', 5], {foo: 'baz'}, result);
                });
            });
        </script>
    </body>
</html>
                      """),
                initialOptions: InAppWebViewGroupOptions(
                  crossPlatform: InAppWebViewOptions(),
                ),
                onWebViewCreated: (InAppWebViewController contoller) {
                  _webContrlller = contoller;
                  _webContrlller.addJavaScriptHandler(
                      handlerName: 'handlerFoo',
                      callback: (args) {
                        // return data to JavaScript side!
                        return {'bar': 'bar_value', 'baz': 'baz_value'};
                      });

                  _webContrlller.addJavaScriptHandler(
                      handlerName: 'handlerFooWithArgs',
                      callback: (args) {
                        print(args);
                        // it will print: [1, true, [bar, 5], {foo: baz}, {bar: bar_value, baz: baz_value}]
                      });
                },
                onLoadStart: (InAppWebViewController contoller, Uri? url) {
                  LOLog.logger.d("onLoadStart:${url!.userInfo}");
                },
                onLoadStop:
                    (InAppWebViewController controller, Uri? url) async {
                  LOLog.logger.d("onLoadStop:${url!.userInfo}");
                },
                onProgressChanged:
                    (InAppWebViewController controller, int progress) {
                  LOLog.logger.d("onProgressChanged:$progress");
                },
                onLoadError: (InAppWebViewController controller, Uri? uri,
                    int code, String message) {
                  LOLog.logger.d("onLoadError:$message");
                },
                onLoadHttpError: (InAppWebViewController controller, Uri? uri,
                    int code, String message) {
                  LOLog.logger.d("onLoadHttpError:$message");
                },
                onConsoleMessage: (InAppWebViewController controller,
                    ConsoleMessage consoleMessage) {
                  LOLog.logger.d("onConsoleMessage:${consoleMessage.message}");
                },
                onReceivedServerTrustAuthRequest:
                    (InAppWebViewController controller,
                        URLAuthenticationChallenge challenge) async {
                  LOLog.logger.d(
                      '''onReceivedServerTrustAuthRequest:当WebView需要执行服务器信任认证（证书验证）时被触发的事件''');
                  return null;
                },
                onPrint: (InAppWebViewController controller, Uri? uri) {
                  LOLog.logger
                      .d('''当window.print()从JavaScript端被调用时被触发的事件，默认行为是取消请求''');
                }),
          ),
        ],
      ),
    );
  }
}
