import 'package:game_it_out_v2/common/exports/exports.dart';

class ContinueWithButton extends StatelessWidget {
  const ContinueWithButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.logo,
  });
  final VoidCallback onTap;
  final String text;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppPadding.p10.h,
        horizontal: AppPadding.p20.w,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: AppValues.deviceWidth,
          height: AppSizes.s50.h,
          decoration: BoxDecoration(
            color: AppColors.primaryLightGray,
            border: Border.all(
              color: AppColors.primaryDarkGrey,
              width: AppSizes.s1,
            ),
            borderRadius: BorderRadius.circular(AppConsts.kRadius),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(AppPadding.p8.h),
                child: Image.asset(logo),
              ),
              WidthSpacer(wi: AppSizes.s15.w),
              ReusableTextWidget(
                text: text,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
