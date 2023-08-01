import 'package:game_it_out_v2/common/exports/exports.dart';

class ProfileButtonUnderlined extends StatelessWidget {
  const ProfileButtonUnderlined({
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
            color: AppColors.primaryLightGray,
            border: Border(
              bottom: BorderSide(
                color: AppColors.primaryDarkOrange,
                width: AppSizes.s1.w,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableTextWidget(
                  text: title,
                  textStyle: appTextStyle(
                    letterSpacing: AppSizes.s1,
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  iconData,
                  color: AppColors.primaryDarkGrey,
                  size: AppSizes.s40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
