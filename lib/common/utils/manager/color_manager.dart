import 'package:game_it_out_v2/common/exports/exports.dart';

class AppColors {
  AppColors._();

  static const Color black = Colors.black;
  static const Color black87 = Colors.black87;
  static const Color black54 = Colors.black54;
  static const Color black26 = Colors.black26;
  static const Color white = Colors.white;
  static const Color white54 = Colors.white54;
  static const Color error = Colors.red;
  static const Color green = Color.fromARGB(255, 57, 198, 61);
  static Color primaryDarkGrey = HexColor.fromHex('#202020');
  static Color secondaryDarkGrey = HexColor.fromHex('#2D2D2D');
  static Color primaryLightGray = HexColor.fromHex('#D9D9D9');
  static const Color primaryDarkOrange = Color.fromARGB(255, 255, 111, 0);
  static const Color secondaryOrange = Color.fromARGB(255, 238, 148, 21);
  static const Color veryDarkOrange = Color.fromARGB(255, 216, 89, 5);
  static Color accentDarkGrey = HexColor.fromHex('#444444');
  static Color lightPurple = HexColor.fromHex('#7D97F4');
  static Color darkPurple = HexColor.fromHex('#110E72');
  static List<Color> orangeColorGradient = [
    AppColors.secondaryOrange,
    AppColors.primaryDarkOrange,
    AppColors.veryDarkOrange,
  ];
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
