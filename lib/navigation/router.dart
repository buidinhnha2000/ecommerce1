import 'package:ecommerce/navigation/routes.dart';
import 'package:ecommerce/pages/screen/live/live.dart';
import 'package:ecommerce/pages/screen/notification/nofication.dart';
import 'package:ecommerce/pages/screen/profile/profile.dart';
import 'package:ecommerce/pages/screen/mall/mall.dart';
import 'package:flutter/material.dart';

import '../pages/screen/home/home.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
            builder: (_) => const HomePage(), settings: settings);
      case feed:
        return MaterialPageRoute(
            builder: (_) => const MallPage(), settings: settings);
      case live:
        return MaterialPageRoute(
            builder: (_) => const LivePage(), settings: settings);
      case nofication:
        return MaterialPageRoute(
            builder: (_) => const NoficationPage(), settings: settings);
      case profile:
        return MaterialPageRoute(
            builder: (_) => ProfilePage(), settings: settings);
      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
    }
  }
}