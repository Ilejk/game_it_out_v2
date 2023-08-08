import 'package:game_it_out_v2/common/exports/exports.dart';

class AchievementWidget extends StatelessWidget {
  const AchievementWidget({
    super.key,
    required this.title,
    required this.description,
    required this.isCompleted,
  });
  final String title;
  final String description;
  final bool isCompleted;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppValues.deviceWidth,
      height: AppValues.deviceHeight * 0.12,
      decoration: BoxDecoration(
        color: isCompleted == true
            ? AppColors.primaryLightGray
            : AppColors.black54,
        border: Border(
          bottom: BorderSide(
            color: AppColors.primaryDarkGrey,
            width: AppSizes.s1.h,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableTextWidget(
                  text: title,
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const HeightSpacer(he: AppSizes.s15),
                ReusableTextWidget(
                  text: description,
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs15,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Icon(
              isCompleted == true ? Icons.done : Icons.more_time_sharp,
              color: isCompleted == true ? AppColors.green : AppColors.error,
              size: AppSizes.s35,
            )
          ],
        ),
      ),
    );
  }
}
