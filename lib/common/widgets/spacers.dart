import 'package:game_it_out_v2/common/exports/exports.dart';

class WidthSpacer extends StatelessWidget {
  const WidthSpacer({
    super.key,
    required this.wi,
  });

  final double wi;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wi.w,
    );
  }
}

class HeightSpacer extends StatelessWidget {
  const HeightSpacer({
    super.key,
    required this.he,
  });
  final double he;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: he.h,
    );
  }
}
