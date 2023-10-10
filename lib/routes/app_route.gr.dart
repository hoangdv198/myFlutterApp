// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:my_flutter_app/core/api/models/stream/stream.dart' as _i6;
import 'package:my_flutter_app/screens/home.dart' as _i1;
import 'package:my_flutter_app/screens/login.dart' as _i2;
import 'package:my_flutter_app/screens/video_detail.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    VideoDetailRoute.name: (routeData) {
      final args = routeData.argsAs<VideoDetailRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.VideoDetailScreen(
          key: args.key,
          stream: args.stream,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.VideoDetailScreen]
class VideoDetailRoute extends _i4.PageRouteInfo<VideoDetailRouteArgs> {
  VideoDetailRoute({
    _i5.Key? key,
    required _i6.StreamModel stream,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          VideoDetailRoute.name,
          args: VideoDetailRouteArgs(
            key: key,
            stream: stream,
          ),
          initialChildren: children,
        );

  static const String name = 'VideoDetailRoute';

  static const _i4.PageInfo<VideoDetailRouteArgs> page =
      _i4.PageInfo<VideoDetailRouteArgs>(name);
}

class VideoDetailRouteArgs {
  const VideoDetailRouteArgs({
    this.key,
    required this.stream,
  });

  final _i5.Key? key;

  final _i6.StreamModel stream;

  @override
  String toString() {
    return 'VideoDetailRouteArgs{key: $key, stream: $stream}';
  }
}
