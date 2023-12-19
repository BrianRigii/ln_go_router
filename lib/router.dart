import 'package:go_router/go_router.dart';
import 'package:ln_go_router/dashboard/screens/home_page.dart';
import 'package:ln_go_router/dashboard/screens/screen_three.dart';
import 'package:ln_go_router/dashboard/screens/screen_two.dart';

GoRouter router = GoRouter(initialLocation: MyHomePage.path, routes: [
  GoRoute(
    path: MyHomePage.path,
    builder: (context, state) =>
        const MyHomePage(title: 'Flutter Demo Home Page'),
  ),
  GoRoute(
    path: ScreenTwo.path,
    builder: (context, state) => const ScreenTwo(),
  ),
  GoRoute(
      path: ScreenThree.path,
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        final String name = state.pathParameters['name']!;
        return ScreenThree(
          id: id,
          name: name,
        );
      })
]);
