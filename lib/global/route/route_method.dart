import 'package:get/get.dart';

import 'route_list.dart';
import 'route_name.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.login, page: () => LoginScreen()),
    GetPage(name: _routeName.fullApp, page: () => FinanceFullApp()),
    GetPage(name: _routeName.userDetails, page: () => UserDetailsScreen()),
  ];
}
