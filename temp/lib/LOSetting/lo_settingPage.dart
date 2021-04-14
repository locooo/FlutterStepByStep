import 'package:flutter/material.dart';
import 'package:temp/LOSetting/lo_settingCell.dart';
import 'package:temp/generated/l10n.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOSettingPage extends StatelessWidget {
  const LOSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).setting),
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
