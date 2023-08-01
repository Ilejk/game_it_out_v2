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
      backgroundColor: AppColors.primaryDarkGrey,
      appBar: AppBar(
        backgroundColor: AppColors.primaryDarkGrey,
        elevation: AppConsts.zero,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20.w,
            vertical: AppPadding.p10.h,
          ),
          child: Column(
            children: [
              const ProfileProgressInformationBox(),
              const ProfileLineSpacer(),
              ProfilePageButton(
                iconData: Icons.keyboard_arrow_right_sharp,
                onTap: () => GBM.pushNamed(
                    context: context, routeName: Routes.changePasswordRoute),
                title: AppString.profileBT1,
              ),
              ProfilePageButton(
                iconData: Icons.keyboard_arrow_right_sharp,
                onTap: () => GBM.pushNamed(
                    context: context, routeName: Routes.changeEmailRoute),
                title: AppString.profileBT2,
              ),
              ProfilePageButton(
                iconData: Icons.keyboard_arrow_right_sharp,
                onTap: () => GBM.pushNamed(
                    context: context, routeName: Routes.helpRoute),
                title: AppString.profileBT3,
              ),
              const ProfileLineSpacer(),
              ProfilePageButton(
                iconData: IconlyLight.logout,
                onTap: () {
                  GBM.storageService.remove(AppConsts.STORAGE_USER_TOKEN_KEY);
                  GBM.pushAndReplaceNamed(
                      context: context, routeName: Routes.loginRoute);
                },
                title: AppString.profileBT4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
