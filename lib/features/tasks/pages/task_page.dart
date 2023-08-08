import 'package:game_it_out_v2/common/exports/exports.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return;
          },
        ),
      ),
    );
  }
}
