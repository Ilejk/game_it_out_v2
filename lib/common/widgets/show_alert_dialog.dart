import 'package:game_it_out_v2/common/exports/exports.dart';

showAlertDialog({
  required BuildContext context,
  required String message,
  String? buttonText,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: ReusableTextWidget(
          text: message,
          textStyle: appTextStyle(
            fontSize: AppFontSizes.fs18,
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        contentPadding: EdgeInsets.fromLTRB(
          AppPadding.p20.w,
          AppPadding.p20.h,
          AppPadding.p20.w,
          AppPadding.p2.h,
        ),
        actions: [
          TextButton(
            onPressed: () => GBM.pop(context: context),
            child: ReusableTextWidget(
              text: buttonText ?? 'OK',
              textStyle: appTextStyle(
                fontSize: AppFontSizes.fs18,
                color: AppColors.primaryDarkOrange,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      );
    },
  );
}
