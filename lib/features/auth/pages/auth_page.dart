import 'package:game_it_out_v2/common/exports/exports.dart';
import 'package:game_it_out_v2/common/widgets/custom_text_field.dart';
import 'package:game_it_out_v2/features/auth/widgets/continue_with_button.dart';
import 'package:game_it_out_v2/features/auth/widgets/login_or_register_button.dart';
import 'package:game_it_out_v2/features/auth/widgets/login_spacer.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  bool isLoginPage = true;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      body: Column(
        children: [
          Image.asset(AppImages.logo),
          CustomTextField(
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
            controller: emailController,
            textFieldStyle: appTextStyle(
              fontSize: AppFontSizes.fs18,
              color: AppColors.primaryDarkGrey,
              fontWeight: FontWeight.w600,
            ),
          ),
          HeightSpacer(he: AppSizes.s10.h),
          CustomTextField(
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
            controller: passwordController,
            textFieldStyle: appTextStyle(
              fontSize: AppFontSizes.fs18,
              color: AppColors.primaryDarkGrey,
              fontWeight: FontWeight.w600,
            ),
          ),
          isLoginPage ? Container() : HeightSpacer(he: AppSizes.s10.h),
          isLoginPage
              ? Container()
              : CustomTextField(
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
                  controller: repeatPasswordController,
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
                  text: isLoginPage
                      ? AppString.dontHaveAcc
                      : AppString.alreadyHaveAcc,
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs14,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLoginPage = !isLoginPage;
                    });
                  },
                  child: ReusableTextWidget(
                    text: isLoginPage ? AppString.register : AppString.login,
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
            onTap: () {
              //TODO
            },
            text: AppString.ctnWithGoogle,
            logo: AppImages.googleLogo,
          ),
          ContinueWithButton(
            onTap: () {
              //TODO
            },
            text: AppString.ctnWithApple,
            logo: AppImages.appleLogo,
          ),
          LoginOrRegisterButton(
            onTap: () {
              //TODO
            },
            text: isLoginPage ? AppString.login : AppString.register,
          ),
        ],
      ),
    );
  }
}
