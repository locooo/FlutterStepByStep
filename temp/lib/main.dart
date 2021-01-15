import 'dart:math';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sp_util/sp_util.dart';
import 'package:temp/LOSetting/Language/LOLanguageUntil.dart';
import 'package:temp/LOSetting/Theme/LOSetTheme.dart';
import 'package:temp/LOSetting/Theme/LOThemeUntil.dart';
import 'package:temp/LOSetting/lo_settingPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:temp/generated/l10n.dart';
import 'package:temp/untils/routers/application.dart';

import 'untils/routers/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  Application.initFluroRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // int themeIndex;
  @override
  Widget build(BuildContext context) {
    // Provider<int>
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LOThemeUntil()),
        ChangeNotifierProvider.value(value: LOLanguageUntil())
      ],
      child: Consumer2<LOThemeUntil, LOLanguageUntil>(
        builder: (context, themeUntil, languageUntil, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primaryColor: LOThemeUntil.themeType[themeUntil.themeIndex]
                    ["primaryColor"]),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
              GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
              GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
            ],
            supportedLocales: S.delegate.supportedLocales,
            localeListResolutionCallback: (locales, supportedLocales) {
              print(locales);
              return;
            },
            locale: languageUntil.toGetCurrentLanguage,
            // home: MyHomePage(title: "qwqewqewqe"),
            onGenerateRoute: Application.router.generator,
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        onPressed: () {
          // Provider.of<LOThemeUntil>(context, listen: false)
          //     .setTheme(Random().nextInt(6));
          // Navigator.push(context,
          //     new MaterialPageRoute(builder: (context) => new LOSetTheme()));
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new LOSettingPage()));
        },
        tooltip: 'Increment',
        child: Text("Add"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
