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
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}

class $Router {}
