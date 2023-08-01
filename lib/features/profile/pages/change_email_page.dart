import 'package:game_it_out_v2/common/exports/exports.dart';

class ChangeEmailPage extends StatefulWidget {
  const ChangeEmailPage({super.key});

  @override
  State<ChangeEmailPage> createState() => _ChangeEmailPageState();
}

class _ChangeEmailPageState extends State<ChangeEmailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeEmailBloc, ChangeEmailState>(
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
                                .read<ChangeEmailBloc>()
                                .add(ChangeEmailNewEmailEvent(value));
                          },
                          bgColor: AppColors.primaryLightGray,
                          hintText: AppString.newEmail,
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
                          obscureText: false,
                          enabledBorderColor: AppColors.primaryDarkGrey,
                        ),
                        HeightSpacer(he: AppSizes.s15.h),
                        CustomTextField(
                          onChaned: (value) {
                            context
                                .read<ChangeEmailBloc>()
                                .add(ChangeEmailPasswordEvent(value));
                          },
                          bgColor: AppColors.primaryLightGray,
                          hintText: AppString.password,
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
                      title: AppString.profileBT2,
                      onTap: () {
                        ChangeEmailRepository(context: context)
                            .handleChangeEmail(
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
