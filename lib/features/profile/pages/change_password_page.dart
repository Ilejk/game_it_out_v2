import 'package:game_it_out_v2/common/exports/exports.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
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
              child: SizedBox(
                width: AppValues.deviceWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextField(
                          onChaned: (value) {
                            context
                                .read<ChangePasswordBloc>()
                                .add(ChangePasswordOldPasswordEvent(value));
                          },
                          bgColor: AppColors.primaryLightGray,
                          hintText: AppString.oldPw,
                          hintStyle: appTextStyle(
                            fontSize: AppFontSizes.fs15,
                            color: AppColors.primaryDarkGrey,
                            fontWeight: FontWeight.normal,
                          ),
                          textFieldStyle: appTextStyle(
                            fontSize: AppFontSizes.fs15,
                            color: AppColors.primaryDarkGrey,
                            fontWeight: FontWeight.normal,
                          ),
                          obscureText: true,
                          enabledBorderColor: AppColors.primaryDarkGrey,
                        ),
                        HeightSpacer(he: AppSizes.s15.h),
                        CustomTextField(
                          onChaned: (value) {
                            context
                                .read<ChangePasswordBloc>()
                                .add(ChangePasswordNewPasswordEvent(value));
                          },
                          bgColor: AppColors.primaryLightGray,
                          hintText: AppString.newPW,
                          hintStyle: appTextStyle(
                            fontSize: AppFontSizes.fs15,
                            color: AppColors.primaryDarkGrey,
                            fontWeight: FontWeight.normal,
                          ),
                          textFieldStyle: appTextStyle(
                            fontSize: AppFontSizes.fs15,
                            color: AppColors.primaryDarkGrey,
                            fontWeight: FontWeight.normal,
                          ),
                          obscureText: true,
                          enabledBorderColor: AppColors.primaryDarkGrey,
                        ),
                      ],
                    ),
                    UpdateInfoButton(
                      title: AppString.profileBT1,
                      onTap: () {
                        ChangePasswordRepository(context: context)
                            .handleChanePassword(
                          () {
                            GBM.pop(context: context);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
