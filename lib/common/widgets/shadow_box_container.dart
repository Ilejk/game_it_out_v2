import 'package:game_it_out_v2/common/exports/exports.dart';

class ShadowBoxContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Color color;

  const ShadowBoxContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: AppColors.white),
        borderRadius: BorderRadius.circular(AppConsts.kRadius),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondaryDarkGrey,
            blurRadius: 12,
            offset: const Offset(5, 5),
          ),
          const BoxShadow(
            color: AppColors.white,
            blurRadius: 12,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: child,
    );
  }
}
