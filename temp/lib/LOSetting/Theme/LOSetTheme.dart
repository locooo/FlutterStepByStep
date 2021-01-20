import 'package:flustars/flustars.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp/LOSetting/Theme/LOThemeSelected.dart';
import 'package:temp/LOSetting/Theme/LOThemeUntil.dart';
import 'package:temp/generated/l10n.dart';

class LOSetTheme extends StatefulWidget {
  LOSetTheme({Key key}) : super(key: key);

  @override
  _LOSetThemeState createState() => _LOSetThemeState();
}

class _LOSetThemeState extends State<LOSetTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).setLanguage),
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: LOThemeUntil.themeType.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                Provider.of<LOThemeUntil>(context, listen: false)
                    .setTheme(index);
              },
              child: Container(
                height: 50,
                child: LOThemeSelected(
                  isSelecteded: SpUtil.getInt("LOTHEME") == index,
                  color: LOThemeUntil.themeType[index]["primaryColor"],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
