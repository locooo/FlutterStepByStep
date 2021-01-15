import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:temp/LOSetting/Language/LOSetLanguage.dart';
import 'package:temp/LOSetting/Theme/LOSetTheme.dart';
import 'package:temp/LOSetting/lo_settingCell.dart';
import 'package:temp/generated/l10n.dart';

class LOSettingPage extends StatelessWidget {
  const LOSettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("设置"),
      ),
      body: Container(
        child: ListView(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new LOSetTheme()));
              },
              child: LOSettingCell(name: S.of(context).setTheme),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new LOSetLanguage()));
              },
              child: LOSettingCell(name: S.of(context).setLanguage),
            ),
          ],
        ),
      ),
    );
  }
}
