import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sp_util/sp_util.dart';
import 'package:temp/Drawer/lo_drawerPage.dart';
import 'package:temp/First/lo_firstPage.dart';
import 'package:temp/LOSetting/Language/LOLanguageUntil.dart';
import 'package:temp/LOSetting/Theme/LOThemeUntil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:temp/Second/lo_secondPage.dart';
import 'package:temp/generated/l10n.dart';
import 'package:temp/untils/routers/application.dart';
import 'package:get/get.dart';

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
              debugPrint("语言 $locales");
              return;
            },
            locale: languageUntil.toGetCurrentLanguage,
            // home: MyHomePage(title: "qwqewqewqe"),
            onGenerateRoute: Application.router.generator,
            navigatorKey:
                Get.key, //Get.key.currentState.overlay.context可以全局获取当前context
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
  int selectedIndex = 0;
  final pages = [LOFirstPage(), LOSecondPage(), LOSecondPage(), LOSecondPage()];
  final pagesText = ['Basics', '用印', '印章', '我的'];
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.home,
        color: Colors.white,
        size: 40,
      ),
      activeIcon: Icon(
        Icons.home,
        color: Colors.white,
        size: 40,
      ),
      // ignore: deprecated_member_use
      title: Text('Basics'),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.spa,
        color: Colors.white,
        size: 40,
      ),
      activeIcon: Icon(
        Icons.spa,
        color: Colors.white,
        size: 40,
      ),
      // ignore: deprecated_member_use
      title: Text("2"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.spa,
        color: Colors.white,
        size: 40,
      ),
      activeIcon: Icon(Icons.spa, color: Colors.white, size: 40),
      // ignore: deprecated_member_use
      title: Text("3"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.spa,
        color: Colors.white,
        size: 40,
      ),
      activeIcon: Icon(
        Icons.spa,
        color: Colors.white,
        size: 40,
      ),
      // ignore: deprecated_member_use
      title: Text("4"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home),
      ),
      drawer: new Drawer(child: LODrawerPage()),
      body: IndexedStack(
        children: pages,
        index: selectedIndex,
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        // iconSize:400,
        items: bottomNavItems,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      this.selectedIndex = index;
    });
  }
}
