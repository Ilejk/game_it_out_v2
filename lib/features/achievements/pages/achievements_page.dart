import 'package:game_it_out_v2/common/exports/exports.dart';
import 'package:game_it_out_v2/features/achievements/widgets/achievement_widget.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key});

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.primaryDarkGrey,
        automaticallyImplyLeading: false,
        title: ReusableTextWidget(
          text: 'ACHIEVEMENTS',
          textAlign: TextAlign.center,
          textStyle: appTextStyle(
            fontSize: AppFontSizes.fs22,
            color: AppColors.primaryLightGray,
            fontWeight: FontWeight.w600,
            letterSpacing: AppSizes.s2,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<AchievementBloc, AchievementState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is AchievementsLoadedState) {
              final achievements = state.achievements;
              return ListView.builder(
                itemCount: achievements.length,
                itemBuilder: (context, index) {
                  final achievement = achievements[index];
                  return AchievementWidget(
                    title: achievement.title,
                    description: achievement.description,
                    isCompleted: achievement.isCompleted,
                  );
                },
              );
            } else if (state is ErrorState) {
              return Center(child: Text(state.message));
            } else {
              return Center(child: Text("Unknown state"));
            }
          },
        ),
      ),
    );
  }
}
