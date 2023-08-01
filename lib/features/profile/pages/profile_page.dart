import 'package:game_it_out_v2/common/exports/exports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20.w,
            vertical: AppPadding.p10.h,
          ),
          child: Column(
            children: [
              const ProfileProgressInformationBox(),
              HeightSpacer(he: AppSizes.s20.h),
              ProfileButtonUnderlined(
                iconData: Icons.keyboard_arrow_right_sharp,
                onTap: () {
                  //TODO
                },
                title: AppString.profileBT1,
              ),
              ProfileButtonUnderlined(
                iconData: Icons.keyboard_arrow_right_sharp,
                onTap: () {
                  //TODO
                },
                title: AppString.profileBT2,
              ),
              ProfileButtonUnderlined(
                iconData: Icons.keyboard_arrow_right_sharp,
                onTap: () {
                  //TODO
                },
                title: AppString.profileBT3,
              ),
              HeightSpacer(he: AppSizes.s200.h),
              LogoutButton(
                onTap: () {
                  //TODO
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
