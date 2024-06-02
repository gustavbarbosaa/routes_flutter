// ignore_for_file: constant_identifier_names

import 'package:app_terceira_nota/modules/authentication/authentication.page.dart';
import 'package:app_terceira_nota/modules/home/home.page.dart';
import 'package:app_terceira_nota/modules/splashscreen/splashsreen.page.dart';
import 'package:flutter/material.dart';

abstract class RoutersUtil {
  static const String SPLASHSCREENPAGE = "/";
  static const String HOMEPAGE = "/home";
  static const String AUTHPAGE = "/auth";

  static Map<String, WidgetBuilder> routes = {
    RoutersUtil.SPLASHSCREENPAGE: (context) => const SplashScreenPage(),
    RoutersUtil.AUTHPAGE: (context) => const AutheticationPage(),
    RoutersUtil.HOMEPAGE: (context) => const HomePage(),
  };
}
