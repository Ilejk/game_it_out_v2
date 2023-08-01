import 'package:game_it_out_v2/common/exports/exports.dart';

class ProfileLineSpacer extends StatelessWidget {
  const ProfileLineSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.s20.h),
      child: Container(
        width: AppValues.deviceWidth,
        height: AppSizes.s1.h,
        color: AppColors.primaryDarkOrange,
      ),
    );
  }
}
