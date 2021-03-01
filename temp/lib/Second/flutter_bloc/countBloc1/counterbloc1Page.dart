import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:temp/LOSetting/Language/LOLanguageUntil.dart';
import 'package:temp/LOSetting/Theme/LOThemeUntil.dart';
import 'package:temp/Second/flutter_bloc/countBloc1/bloc/counterbloc1_bloc.dart';
import 'package:temp/generated/l10n.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOCounterBloc1Page extends StatelessWidget {
  const LOCounterBloc1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LOThemeUntil()),
        ChangeNotifierProvider.value(value: LOLanguageUntil())
      ],
      child: Consumer2<LOThemeUntil, LOLanguageUntil>(
        builder: (context, themeUntil, languageUntil, child) {
          return BlocProvider(
            create: (context) => Counterbloc1Bloc(),
            child: MaterialApp(
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
                debugPrint("语言 ");
                return;
              },
              locale: languageUntil.toGetCurrentLanguage,
              home: Scaffold(
                  appBar: AppBar(
                    title: Text("CounterBloc1"),
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        // Navigator.of(context).pop('刷新')
                        NavigatorUntil.pop(context);
                      },
                    ),
                  ),
                  body: LOCounterBloc1PageView()),
              //Get.key.currentState.overlay.context可以全局获取当前context
            ),
          );
        },
      ),
    );

    //   BlocProvider(
    //     create: (context) => Counterbloc1Bloc(),
    //     child: MaterialApp(
    //       home: Scaffold(
    //         appBar: AppBar(
    //           title: Text("CounterBloc1"),
    //         ),
    //         body: Container(
    //           child: LOCounterBloc1PageView(),
    //         ),
    //       ),
    //     ),
    //   );
  }
}

class LOCounterBloc1PageView extends StatelessWidget {
  const LOCounterBloc1PageView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: BlocBuilder<Counterbloc1Bloc, Counterbloc1State>(
            builder: (context, state) {
              print("${state.runtimeType}");
              return Text("${state.counter}");
            },
          ),
        ),
        Center(
          child: TextButton(
            child: Text("+"),
            onPressed: () {
              BlocProvider.of<Counterbloc1Bloc>(context)
                  .add(Counterbloc1Inscrement());
              // context.read<Counterbloc1Bloc>().add(Counterbloc1Inscrement());
            },
          ),
        ),
        Center(
          child: TextButton(
            child: Text("-"),
            onPressed: () {
              context.read<Counterbloc1Bloc>().add(Counterbloc1Descrement());
            },
          ),
        ),
        Center(
          child: TextButton(
            child: Text("reset"),
            onPressed: () {
              context.read<Counterbloc1Bloc>().add(Counterbloc1Reset());
            },
          ),
        ),
        Center(
          child: TextButton(
            child: Text("toChild"),
            onPressed: () {
              NavigatorUntil.push(context, Routes.testLOCounterBloc1ChildPage);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return BlocProvider(
              //         create: (context) => context.read<Counterbloc1Bloc>(),
              //         child: LOCounterBloc1ChildPage(),
              //       );
              //     },
              //   ),
              // );
            },
          ),
        ),
      ],
    );
  }
}
