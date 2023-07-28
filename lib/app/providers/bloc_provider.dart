import 'package:game_it_out_v2/common/exports/exports.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(create: (context) => BottomBarBloc()),
      ];
}
