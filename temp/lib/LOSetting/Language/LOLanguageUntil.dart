import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';

class LOLanguageUntil extends ChangeNotifier {
  static const languageList = ['', 'zh', 'en'];
  static const languageKind = ['跟随系统', '简体中文', '英文'];
  static const locale_languageList = [null, Locale('zh', 'CN'), Locale('en')];

//S.load(Locale('zh', 'CN');?????????

  int _languageIndex;
  int get languageIndex {
    if (_languageIndex == null) {
      _languageIndex = SpUtil.getInt('LOLanguage', defValue: 0);
    }
    return _languageIndex;
  }

  void changeLanguageIndex(int index) async {
    SpUtil.putInt('LOLanguage', index);
    _languageIndex = index;
    notifyListeners();
  }

  Locale get toGetCurrentLanguage {
    if (this.languageIndex == null || this.languageIndex == 0) {
      return null;
    } else {
      switch (_languageIndex) {
        case 0:
          return null;
          break;
        case 1:
          return Locale('zh', 'CN');
          break;
        default:
          return Locale('en');
      }
    }
  }

  // String _language;

  // String get language {
  //   if (_language == null) {
  //     _language = SpUtil.getString("LOLanguage", defValue: "");
  //   }
  //   return _language;
  // }
}
