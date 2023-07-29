import 'package:game_it_out_v2/common/exports/exports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            controller: emailController,
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
            controller: passwordController,
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
                  text: AppString.dontHaveAcc,
                  textStyle: appTextStyle(
                    fontSize: AppFontSizes.fs14,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () => GBM.pushNamed(
                      context: context, routeName: Routes.registerRoute),
                  child: ReusableTextWidget(
                    text: AppString.register,
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
            onTap: () {
              //TODO craete login/register fun
            },
            text: AppString.login,
          ),
        ],
      ),
    );
  }
}
