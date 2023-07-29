import 'package:game_it_out_v2/common/exports/exports.dart';
import 'package:game_it_out_v2/features/auth/repository/register_repository.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.primaryLightGray,
          body: Column(
            children: [
              Image.asset(AppImages.logo),
              CustomTextField(
                enabledBorderColor: AppColors.primaryDarkGrey,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(
                  Icons.mail_outline_outlined,
                  color: AppColors.primaryDarkOrange,
                ),
                bgColor: AppColors.primaryLightGray,
                hintText: AppString.email,
                hintStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
                onChaned: (value) => context.read<RegisterBloc>().add(
                      RegisterEmailEvent(value),
                    ),
                textFieldStyle: appTextStyle(
                  fontSize: AppFontSizes.fs18,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              HeightSpacer(he: AppSizes.s10.h),
              CustomTextField(
                enabledBorderColor: AppColors.primaryDarkGrey,
                obscureText: true,
                keyboardType: TextInputType.text,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: AppColors.primaryDarkOrange,
                ),
                bgColor: AppColors.primaryLightGray,
                hintText: AppString.password,
                hintStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
                onChaned: (value) => context.read<RegisterBloc>().add(
                      RegisterPasswordEvent(value),
                    ),
                textFieldStyle: appTextStyle(
                  fontSize: AppFontSizes.fs18,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              HeightSpacer(he: AppSizes.s10.h),
              CustomTextField(
                enabledBorderColor: AppColors.primaryDarkGrey,
                obscureText: true,
                keyboardType: TextInputType.text,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: AppColors.primaryDarkOrange,
                ),
                bgColor: AppColors.primaryLightGray,
                hintText: AppString.repeatPw,
                hintStyle: appTextStyle(
                  fontSize: AppFontSizes.fs15,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.normal,
                ),
                onChaned: (value) => context.read<RegisterBloc>().add(
                      RegisterRepeatPassword(value),
                    ),
                textFieldStyle: appTextStyle(
                  fontSize: AppFontSizes.fs18,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p20.w,
                  vertical: AppFontSizes.fs10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableTextWidget(
                      text: AppString.alreadyHaveAcc,
                      textStyle: appTextStyle(
                        fontSize: AppFontSizes.fs14,
                        color: AppColors.primaryDarkGrey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => GBM.pop(context: context),
                      child: ReusableTextWidget(
                        text: AppString.login,
                        textStyle: appTextStyle(
                          fontSize: AppFontSizes.fs14,
                          color: AppColors.primaryDarkOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const LoginSpacer(),
              ContinueWithButton(
                spacer: AppSizes.s30.w,
                onTap: () {
                  //TODO create google login/register
                },
                text: AppString.ctnWithGoogle,
                logo: AppImages.googleLogo,
              ),
              ContinueWithButton(
                spacer: AppSizes.s15.w,
                onTap: () {
                  //TODO create apple login/register
                },
                text: AppString.ctnWithApple,
                logo: AppImages.appleLogo,
              ),
              LoginOrRegisterButton(
                onTap: () =>
                    RegisterRepository(context: context).handleRegister(
                  () => GBM.pushAndReplaceNamed(
                    context: context,
                    routeName: Routes.mainRoute,
                  ),
                  //TODO FIX THIS COZ IT DOESNT PUSH TO MAIN PAGE AFTER REGISTRATION
                ),
                text: AppString.register,
              ),
            ],
          ),
        );
      },
    );
  }
}
