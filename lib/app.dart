import 'package:fb_clone_ctg/module/home_page/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/route.dart';

import 'config/theme.dart';
import 'constant/route_constant.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sign in With Bloc',
        theme: themeConfig(),
        onGenerateRoute: onGenerateRoute,
        initialRoute: RouteConstant.SIGN_IN,
        routes: routeConfig());
  }

  Route onGenerateRoute(RouteSettings settings) {
    // if (RouteConstant.TAB_ROUTE.contains(settings.name)) {
    //   return PageRouteBuilder(
    //       pageBuilder: (context, animation, builder) =>
    //           routeConfig()[settings.name].call(context));
    // }
    if (settings.name == RouteConstant.HOME) {
      return PageRouteBuilder(
        pageBuilder: (_, __, ___) => HomePage(),
        transitionDuration: Duration(seconds: 0),
      );
    }
  }
}
