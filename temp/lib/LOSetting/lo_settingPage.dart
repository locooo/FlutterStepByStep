import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:temp/LOSetting/Language/LOSetLanguage.dart';
import 'package:temp/LOSetting/Theme/LOSetTheme.dart';
import 'package:temp/LOSetting/lo_settingCell.dart';
import 'package:temp/generated/l10n.dart';
import 'package:temp/untils/routers/application.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOSettingPage extends StatelessWidget {
  final String title;
  final int testPassParam;
  const LOSettingPage({Key key, @required this.title, this.testPassParam})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.ac_unit),
          onPressed: () => {Navigator.of(context).pop()},
        ),
        title: Text(title),
      ),
      body: Container(
        child: ListView(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                NavigatorUntil.push(context, Routes.settingThemePage);
              },
              child: LOSettingCell(name: S.of(context).setTheme),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                NavigatorUntil.push(context, Routes.settingLanguagePage);
              },
              child: LOSettingCell(name: S.of(context).setLanguage),
            ),
          ],
        ),
      ),
    );
  }
}
