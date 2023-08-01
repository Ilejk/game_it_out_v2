import 'package:game_it_out_v2/common/exports/exports.dart';
import 'package:game_it_out_v2/features/auth/pages/auth_page.dart';

class Routes {
  static const String onBoardingRoute = '/';
  static const String homeRoute = '/homeRoute';
  static const String loginRoute = '/loginRoute';
  static const String registerRoute = '/registerRoute';
  static const String createNewCharacterRoute = '/createNewCharacterRoute';
  static const String newTaskRoute = '/newTaskRoute';
  static const String updateTaskRoute = '/updateTaskRoute';
  static const String mainRoute = '/mainRoute';
  static const String authRoute = '/authRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case Routes.newTaskRoute:
        return MaterialPageRoute(builder: (_) => const NewTaskPage());
      case Routes.updateTaskRoute:
        return MaterialPageRoute(builder: (_) => const UpdateTaskPage());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.createNewCharacterRoute:
        return MaterialPageRoute(
            builder: (_) => const CreateNewCharacterPage());
      case Routes.authRoute:
        return MaterialPageRoute(builder: (_) => const AuthPage());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppString.noRouteFound),
        ),
        body: const Center(
          child: Text(AppString.noRouteFound),
        ),
      ),
    );
  }
}
