import 'package:game_it_out_v2/common/exports/exports.dart';

void main() async {
  await GBM.init();
  runApp(
    const GameItOutV2(),
  );
}
