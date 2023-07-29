import 'package:game_it_out_v2/common/exports/exports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.bgColor,
    this.keyboardType,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    required this.hintStyle,
    required this.controller,
    this.onChaned,
    required this.textFieldStyle,
    required this.obscureText,
    required this.enabledBorderColor,
  });

  final Color bgColor;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool obscureText;
  final TextStyle hintStyle;
  final TextEditingController controller;
  final void Function(String)? onChaned;
  final TextStyle textFieldStyle;
  final Color enabledBorderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppValues.deviceWidth * 0.9,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppConsts.kRadius),
      ),
      child: TextFormField(
        obscureText: obscureText,
        autocorrect: false,
        keyboardType: keyboardType,
        controller: controller,
        cursorHeight: AppSizes.s25,
        cursorColor: AppColors.primaryDarkOrange,
        onChanged: onChaned,
        style: textFieldStyle,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          suffixIconColor: suffixIconColor,
          prefixIconColor: prefixIconColor,
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppColors.error,
              width: AppSizes.s1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConsts.kRadius),
            borderSide: const BorderSide(
              color: AppColors.primaryDarkOrange,
              width: AppSizes.s1,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppColors.error,
              width: AppSizes.s1,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppColors.secondaryDarkGrey,
              width: AppSizes.s1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConsts.kRadius),
            borderSide: BorderSide(
              color: enabledBorderColor,
              width: AppSizes.s1,
            ),
          ),
        ),
      ),
    );
  }
}
