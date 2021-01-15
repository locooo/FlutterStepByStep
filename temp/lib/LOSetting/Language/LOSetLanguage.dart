import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp/LOSetting/Language/LOLanguageCell.dart';
import 'package:temp/LOSetting/Language/LOLanguageUntil.dart';
import 'package:temp/generated/l10n.dart';

class LOSetLanguage extends StatefulWidget {
  LOSetLanguage({Key key}) : super(key: key);

  @override
  _LOSetLanguageState createState() => _LOSetLanguageState();
}

class _LOSetLanguageState extends State<LOSetLanguage> {
  @override
  Widget build(BuildContext context) {
    List a = [
      S.current.followSystem,
      S.current.SimplifiedChinese,
      S.current.english
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).setLanguage),
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: a.length,
          itemBuilder: (BuildContext context, int index) {
            // bool isSelected = (SpUtil.getInt("LanGuage") == index);
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                Provider.of<LOLanguageUntil>(context, listen: false)
                    .changeLanguageIndex(index);
              },
              child: Container(
                // height: 100,
                child: LOLanguageCell(
                  name: a[index],
                  isSelected:
                      (SpUtil.getInt('LOLanguage', defValue: 0) == index),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
