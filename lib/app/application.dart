import 'package:game_it_out_v2/common/exports/exports.dart';

class GameItOutV2 extends ConsumerWidget {
  const GameItOutV2({super.key});

  static final defaultLightColorScheme =
      ColorScheme.fromSwatch(primarySwatch: Colors.purple);
  static final defaultDarkColorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.purple, brightness: Brightness.dark);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(userProvider.notifier).refresh();
    // List<UserModel> users = ref.watch(userProvider);
    // String initialRoute =
    //     users.isEmpty ? Routes.onBoardingRoute : Routes.homeRoute;
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 825),
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.onBoardingRoute,
        );
      },
    );
  }
}
