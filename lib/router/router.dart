import 'package:auto_route/auto_route.dart';
import 'package:my_flutter_app/router/router.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
// @override
// replaceInRouteName

  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(path: '/login',page: LoginRoute.page,initial: true),
        AutoRoute(path: '/register',page:RegisterRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
      ];
}

class $Router {}
