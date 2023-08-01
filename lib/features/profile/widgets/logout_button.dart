import 'package:game_it_out_v2/common/exports/exports.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppSizes.s50.h,
        width: AppValues.deviceWidth,
        decoration: BoxDecoration(
          color: AppColors.primaryDarkGrey,
          borderRadius: BorderRadius.circular(AppConsts.kRadius),
        ),
        child: Center(
          child: ReusableTextWidget(
            text: AppString.profileBT4,
            textAlign: TextAlign.center,
            textStyle: appTextStyle(
              letterSpacing: AppSizes.s1,
              fontSize: AppFontSizes.fs18,
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
