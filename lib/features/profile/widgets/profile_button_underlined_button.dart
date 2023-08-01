import 'package:game_it_out_v2/common/exports/exports.dart';

class ProfilePageButton extends StatelessWidget {
  const ProfilePageButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData,
  });
  final VoidCallback onTap;
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppPadding.p10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: AppValues.deviceWidth,
          height: AppSizes.s50.h,
          decoration: BoxDecoration(
            color: AppColors.secondaryDarkGrey,
            borderRadius: BorderRadius.circular(AppConsts.kRadius),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p8.w, vertical: AppPadding.p2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableTextWidget(
                  text: title,
                  textStyle: appTextStyle(
                    letterSpacing: AppSizes.s1,
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryLightGray,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Icon(
                  iconData,
                  color: AppColors.primaryLightGray,
                  size: AppSizes.s35,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
