import 'package:game_it_out_v2/common/exports/exports.dart';

class GameItOutV2 extends StatelessWidget {
  const GameItOutV2({super.key});

  static final defaultLightColorScheme =
      ColorScheme.fromSwatch(primarySwatch: Colors.purple);
  static final defaultDarkColorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.purple, brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 825),
        minTextAdapt: true,
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.mainRoute,
          );
        },
      ),
    );
  }
}
