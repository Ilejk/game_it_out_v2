import 'package:game_it_out_v2/common/exports/exports.dart';

class LoginSpacer extends StatelessWidget {
  const LoginSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p20.w,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: AppValues.deviceWidth,
              height: AppSizes.s1.h,
              color: AppColors.primaryDarkGrey,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p8.w),
            child: ReusableTextWidget(
              text: AppString.or,
              textStyle: appTextStyle(
                fontSize: AppFontSizes.fs15,
                color: AppColors.primaryDarkGrey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: AppValues.deviceWidth,
              height: AppSizes.s1.h,
              color: AppColors.primaryDarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
