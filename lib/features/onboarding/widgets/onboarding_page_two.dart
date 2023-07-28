import 'package:flutter_animate/flutter_animate.dart';
import 'package:game_it_out_v2/common/exports/exports.dart';

class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppValues.deviceHeight,
      width: AppValues.deviceWidth,
      color: AppColors.primaryLightGray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          onBoardingText(
            text: AppString.play,
            duration: AppConsts.onBoardingAnimationDuration,
            fs: AppFontSizes.fs25,
            color: AppColors.primaryDarkGrey,
          ),
          HeightSpacer(he: AppSizes.s10.h),
          onBoardingText(
            text: AppString.create,
            duration: AppConsts.onBoardingAnimationDuration,
            delay: AppConsts.onBoardingAnimationDelay1,
            fs: AppFontSizes.fs30,
            color: AppColors.primaryDarkGrey,
          ),
          HeightSpacer(he: AppSizes.s10.h),
          onBoardingText(
            text: AppString.complete,
            duration: AppConsts.onBoardingAnimationDuration,
            delay: AppConsts.onBoardingAnimationDelay2,
            fs: AppFontSizes.fs35,
            color: AppColors.primaryDarkGrey,
          ),
          HeightSpacer(he: AppSizes.s10.h),
          onBoardingText(
            text: AppString.improve,
            duration: AppConsts.onBoardingAnimationDuration,
            delay: AppConsts.onBoardingAnimationDelay3,
            fs: AppFontSizes.fs40,
            color: AppColors.primaryDarkOrange,
          ),
        ],
      ),
    );
  }

  Animate onBoardingText(
      {required String text,
      required int duration,
      int? delay,
      required double fs,
      required Color color}) {
    return ReusableTextWidget(
      text: text,
      textStyle: appTextStyle(
        fontSize: fs,
        color: color,
        fontWeight: FontWeight.w700,
        letterSpacing: AppSizes.s1,
      ),
    ).animate().fadeIn(
          duration: duration.ms,
          curve: Curves.easeIn,
          delay: (delay ?? 0).ms,
        );
  }
}
