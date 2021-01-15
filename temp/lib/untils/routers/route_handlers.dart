import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:temp/LOSetting/lo_settingPage.dart';
import 'package:temp/main.dart';

var rootHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyHomePage();
});

var settingPageHandel = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LOSettingPage();
});
