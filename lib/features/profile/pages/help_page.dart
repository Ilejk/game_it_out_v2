import 'package:game_it_out_v2/common/exports/exports.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      appBar: AppBar(
        backgroundColor: AppColors.primaryLightGray,
        elevation: AppConsts.zero,
        leading: InkWell(
          onTap: () => GBM.pop(context: context),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.primaryDarkGrey,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20.w,
            vertical: AppPadding.p10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableTextWidget(
                text: AppString.kHowToPlay,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs20,
                  color: AppColors.primaryDarkOrange,
                  fontWeight: FontWeight.w600,
                ),
              ),
              HeightSpacer(he: AppSizes.s20.h),
              ReusableTextWidget(
                text: AppString.kRules1,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kRules2,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kRules3,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                maxLines: 2,
                text: AppString.kRules4,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kRules5,
                maxLines: 2,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kRules6,
                maxLines: 2,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kRules7,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s20.h),
              ReusableTextWidget(
                text: AppString.kPleaseRead,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs20,
                  color: AppColors.primaryDarkOrange,
                  fontWeight: FontWeight.w600,
                ),
              ),
              HeightSpacer(he: AppSizes.s20.h),
              ReusableTextWidget(
                text: AppString.kPleaseRead1,
                maxLines: 2,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kPleaseRead2,
                maxLines: 2,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kPleaseRead3,
                maxLines: 3,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              HeightSpacer(he: AppSizes.s5.h),
              ReusableTextWidget(
                text: AppString.kPleaseRead4,
                maxLines: 2,
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
