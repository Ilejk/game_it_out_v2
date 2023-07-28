import 'package:game_it_out_v2/common/exports/exports.dart';

class OnBoardingPageThree extends StatelessWidget {
  const OnBoardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppValues.deviceHeight,
      width: AppValues.deviceWidth,
      color: AppColors.primaryLightGray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.logo,
          ),
          ReusableTextWidget(
            text: AppString.whatIsGameItOut,
            maxLines: 2,
            textAlign: TextAlign.center,
            textStyle: appTextStyle(
              fontSize: AppFontSizes.fs18,
              color: AppColors.primaryDarkGrey,
              fontWeight: FontWeight.normal,
            ),
          ),
          HeightSpacer(he: AppSizes.s10.h),
          ReusableTextWidget(
            text: AppString.beginYourJourney,
            maxLines: 1,
            textAlign: TextAlign.center,
            textStyle: appTextStyle(
              fontSize: AppFontSizes.fs20,
              color: AppColors.primaryDarkOrange,
              fontWeight: FontWeight.w600,
              letterSpacing: AppSizes.s1,
            ),
          ),
        ],
      ),
    );
  }
}
