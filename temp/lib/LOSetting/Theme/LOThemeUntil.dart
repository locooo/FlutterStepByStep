import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

class LOThemeUntil extends ChangeNotifier {
  static const Map themeType = {
    0: {
      //black
      "primaryColor": Color(0xff333333),
      "primaryColorDark": Color(0xff000000),
      "colorAccent": Color(0xff666666),
      "primaryColorLight": Color(0xff999999),
    },
    1: {
      //red
      "primaryColor": Color(0xffF44336),
      "primaryColorDark": Color(0xffD32F2F),
      "colorAccent": Color(0xffFF5252),
      "primaryColorLight": Color(0xffFFCDD2),
    },
    2: {
      //blue
      "primaryColor": Color(0xff2196F3),
      "primaryColorDark": Color(0xff1976D2),
      "colorAccent": Color(0xff448AFF),
      "primaryColorLight": Color(0xffBBDEFB),
    },
    3: {
      //pink
      "primaryColor": Color(0xffE91E63),
      "primaryColorDark": Color(0xffC2185B),
      "colorAccent": Color(0xffFF4081),
      "primaryColorLight": Color(0xffF8BBD0),
    },
    4: {
      //purple
      "primaryColor": Color(0xff673AB7),
      "primaryColorDark": Color(0xff512DA8),
      "colorAccent": Color(0xff7C4DFF),
      "primaryColorLight": Color(0xffD1C4E9),
    },
    5: {
      //grey
      "primaryColor": Color(0xff9E9E9E),
      "primaryColorDark": Color(0xff616161),
      "colorAccent": Color(0xff9E9E9E),
      "primaryColorLight": Color(0xffF5F5F5),
    },
    6: {
      //green
      "primaryColor": Color(0xff4caf50),
      "primaryColorDark": Color(0xff388E3C),
      "colorAccent": Color(0xff8BC34A),
      "primaryColorLight": Color(0xffC8E6C9),
    },
  };

  int? _themeImdex;

  int? get themeIndex {
    if (_themeImdex == null) {
      _themeImdex = SpUtil.getInt("LOTHEME", defValue: 0);
    }
    return _themeImdex;
  }

  void setTheme(int index) async {
    SpUtil.putInt("LOTHEME", index);
    _themeImdex = index;
    print(_themeImdex);
    notifyListeners();
  }
}
