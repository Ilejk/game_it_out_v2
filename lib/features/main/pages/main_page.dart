import 'package:flutter/cupertino.dart';
import 'package:game_it_out_v2/common/exports/exports.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<BottomBarBloc, BottomBarState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.primaryDarkGrey,
          body: Stack(
            children: [
              getPageByIndex(state.selectedIndex),
              getBottomNavBar(size),
            ],
          ),
        );
      },
    );
  }

  Widget getPageByIndex(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const TaskPage();
      case 2:
        return const AchievementsPage();
      case 3:
        return const ProfilePage();
      default:
        return Container();
    }
  }

  Positioned getBottomNavBar(Size size) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: SizedBox(
        width: size.width,
        height: AppSizes.s70.h,
        child: Stack(
          children: [
            CustomPaint(
              painter: BNBCustomPainter(),
              size: Size(
                size.width,
                AppSizes.s70.h,
              ),
            ),
            bottomNavNewTaskButton(),
            bottonNavigationBar(size)
          ],
        ),
      ),
    );
  }

  Color _getIconColor(int index) {
    var isPageSelected =
        context.read<BottomBarBloc>().state.selectedIndex == index;
    return isPageSelected ? AppColors.primaryDarkOrange : AppColors.white54;
  }

  SizedBox bottonNavigationBar(Size size) {
    int isHome = 0;
    int isTasks = 1;
    int isAchievements = 2;
    int isProfile = 3;
    return SizedBox(
      width: size.width,
      height: AppSizes.s70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => changeNavBarPage(isHome),
            icon: Icon(
              IconlyLight.home,
              color: _getIconColor(isHome),
              size: AppSizes.s30,
            ),
          ),
          IconButton(
            onPressed: () => changeNavBarPage(isTasks),
            icon: Icon(
              Icons.list,
              color: _getIconColor(isTasks),
              size: AppSizes.s30,
            ),
          ),
          Container(
            width: size.width * 0.2,
          ),
          IconButton(
            onPressed: () => changeNavBarPage(isAchievements),
            icon: Icon(
              Icons.widgets_rounded,
              color: _getIconColor(isAchievements),
              size: AppSizes.s30,
            ),
          ),
          IconButton(
            onPressed: () => changeNavBarPage(isProfile),
            icon: Icon(
              IconlyLight.profile,
              color: _getIconColor(isProfile),
              size: AppSizes.s30,
            ),
          ),
        ],
      ),
    );
  }

  void changeNavBarPage(int index) {
    context.read<BottomBarBloc>().add(BottomBarEvent(index));
  }

  Center bottomNavNewTaskButton() {
    return Center(
      heightFactor: 0.5,
      child: GestureDetector(
        onTap: () =>
            GBM.pushNamed(context: context, routeName: Routes.newTaskRoute),
        child: Container(
          height: AppSizes.s70.h,
          width: AppSizes.s70.h,
          decoration: BoxDecoration(
            color: AppColors.primaryDarkOrange,
            borderRadius: BorderRadius.circular(AppSizes.s40),
            boxShadow: const [
              BoxShadow(
                color: AppColors.primaryDarkOrange,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0.5, 0.5),
              ),
              BoxShadow(
                color: AppColors.primaryDarkOrange,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(-0.5, -0.5),
              )
            ],
          ),
          child: Center(
            child: Icon(
              CupertinoIcons.add,
              color: AppColors.primaryDarkGrey,
              size: AppSizes.s35,
            ),
          ),
        ),
      ),
    );
  }
}
