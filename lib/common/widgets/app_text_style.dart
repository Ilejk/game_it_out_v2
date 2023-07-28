import 'package:game_it_out_v2/common/exports/exports.dart';

TextStyle appTextStyle({
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
  double? letterSpacing = 0,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize.sp,
    color: color,
    fontWeight: fontWeight,
    letterSpacing: letterSpacing,
  );
}
