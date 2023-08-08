import 'package:game_it_out_v2/common/exports/exports.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(create: (context) => BottomBarBloc()),
        BlocProvider(create: (context) => ChangePasswordBloc()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => ChangeEmailBloc()),
        BlocProvider(
            create: (context) => AchievementBloc(AchievementRepository())
              ..add(FetchAchievementsEvent())),
      ];
}
