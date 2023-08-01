import 'package:game_it_out_v2/common/exports/exports.dart';

class UpdateInfoButton extends StatelessWidget {
  const UpdateInfoButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final VoidCallback onTap;
  final String title;
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
            text: title,
            textAlign: TextAlign.center,
            textStyle: appTextStyle(
              letterSpacing: AppSizes.s1,
              fontSize: AppFontSizes.fs18,
              color: AppColors.primaryLightGray,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
