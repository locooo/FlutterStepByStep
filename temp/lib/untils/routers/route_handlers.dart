import 'dart:convert';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:temp/LOSetting/Language/LOSetLanguage.dart';
import 'package:temp/LOSetting/Theme/LOSetTheme.dart';
import 'package:temp/LOSetting/lo_settingPage.dart';
import 'package:temp/main.dart';

var rootHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyHomePage();
});

var settingPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String asdad = jsonDecode(params['other'].first)['ee'];
  print(asdad);

  String title = params['title'].first;
  // int test = int.parse(params['test']?.first);
  // bool a = params['boolOther'].first.loParseBool();
  // print(test);
  return LOSettingPage(title: title);
});

var settingLanguagePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSetLanguage();
});

var settingThemePageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSetTheme();
});

extension LOBoolParsing on String {
  bool loParseBool() {
    return this.toLowerCase() == 'true';
  }
}
