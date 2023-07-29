import 'package:game_it_out_v2/common/exports/exports.dart';
import 'package:game_it_out_v2/common/widgets/shadow_box_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      body: Align(
        alignment: Alignment.center,
        child: ShadowBoxContainer(
          height: 20,
          width: 300,
          child: Text('adadada'),
          color: AppColors.primaryLightGray,
        ),
      ),
    );
  }
}
