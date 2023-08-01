import 'package:game_it_out_v2/common/exports/exports.dart';

class ProfileProgressInformationBox extends StatelessWidget {
  const ProfileProgressInformationBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppValues.deviceWidth,
      decoration: BoxDecoration(
        color: AppColors.primaryDarkGrey,
        borderRadius: BorderRadius.circular(AppConsts.kRadius),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p10.w,
          vertical: AppPadding.p20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableTextWidget(
                  text: 'Current exp gained',
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs15,
                    color: AppColors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                WidthSpacer(wi: AppSizes.s15.w),
                ReusableTextWidget(
                  text: '20.50 exp',
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryDarkOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableTextWidget(
                  text: 'Current lvl',
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs15,
                    color: AppColors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                WidthSpacer(wi: AppSizes.s15.w),
                ReusableTextWidget(
                  text: '2 lvl',
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryDarkOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableTextWidget(
                  text: 'Level completion percentage',
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs15,
                    color: AppColors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                WidthSpacer(wi: AppSizes.s15.w),
                ReusableTextWidget(
                  text: '0.20 %',
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryDarkOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
