import 'package:game_it_out_v2/common/exports/exports.dart';

class ChooseCharacterWidget extends StatelessWidget {
  const ChooseCharacterWidget({
    super.key,
    required this.onTap,
    required this.animation,
    required this.color,
    required this.animationController,
  });
  final VoidCallback onTap;
  final String animation;
  final Color color;
  final Animation<double> animationController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ShadowBoxContainer(
        height: AppValues.deviceWidth * 0.4,
        width: AppValues.deviceWidth * 0.4,
        color: color,
        child: LottieBuilder.asset(
          animation,
          controller: animationController,
        ),
      ),
    );
  }
}
