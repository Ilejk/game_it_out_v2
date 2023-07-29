import 'package:game_it_out_v2/common/exports/exports.dart';

toastInfo({
  required String msg,
  Color bgColor = AppColors.black,
  Color textColor = AppColors.white,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 2,
    backgroundColor: bgColor,
    textColor: textColor,
    fontSize: AppFontSizes.fs15,
  );
}
