import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:moto_ex/internal/debug/debug_labels.dart';
import 'package:moto_ex/internal/router/route_paths.dart';
import 'package:moto_ex/presentation/screens/home/home_screen.dart';

final _rootNavigation = GlobalKey<NavigatorState>(
  debugLabel: DebugLabels.rootNavigationDebugLabel,
);
final _findNavigation = GlobalKey<NavigatorState>(
  debugLabel: DebugLabels.findNavigationDebugLabel,
);
final _favouriteNavigation = GlobalKey<NavigatorState>(
  debugLabel: DebugLabels.favouriteNavigationDebugLabel,
);
final _addNavigation = GlobalKey<NavigatorState>(
  debugLabel: DebugLabels.addNavigationDebugLabel,
);
final _messageNavigation = GlobalKey<NavigatorState>(
  debugLabel: DebugLabels.messageNavigationDebugLabel,
);
final _press = GlobalKey<NavigatorState>(
  debugLabel: DebugLabels.pressNavigationDebugLabel,
);

final goRouter = GoRouter(
  navigatorKey: _rootNavigation,
  initialLocation: RoutePaths.find,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _findNavigation,
          routes: [
            GoRoute(
              path: RoutePaths.find,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Center(
                  child: Text('Find'),
                ),
              ),
            )
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _favouriteNavigation,
          routes: [
            GoRoute(
              path: RoutePaths.favourite,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Placeholder(
                  child: Text('Favourite'),
                ),
              ),
            )
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _addNavigation,
          routes: [
            GoRoute(
              path: RoutePaths.add,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Placeholder(
                  child: Text('Add'),
                ),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _messageNavigation,
          routes: [
            GoRoute(
              path: RoutePaths.message,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Placeholder(
                  child: Text('Message'),
                ),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _press,
          routes: [
            GoRoute(
              path: RoutePaths.press,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Placeholder(
                  child: Text('Press'),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
