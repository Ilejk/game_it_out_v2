import 'package:game_it_out_v2/common/exports/exports.dart';

class LoginOrRegisterButton extends StatelessWidget {
  const LoginOrRegisterButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p20.w,
          vertical: AppPadding.p20.h,
        ),
        child: Container(
          height: AppSizes.s50.h,
          width: AppValues.deviceWidth,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryDarkOrange,
              width: AppSizes.s1.w,
            ),
            borderRadius: BorderRadius.circular(AppConsts.kRadius),
            color: AppColors.primaryDarkGrey,
          ),
          child: Center(
            child: ReusableTextWidget(
              text: text,
              textAlign: TextAlign.center,
              textStyle: appTextStyle(
                fontSize: AppFontSizes.fs20,
                color: AppColors.primaryLightGray,
                fontWeight: FontWeight.w600,
                letterSpacing: AppSizes.s1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
