import 'package:game_it_out_v2/common/exports/exports.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animationController!.status == AnimationStatus.completed
        ? _animationController!.stop()
        : _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20.w,
            vertical: AppPadding.p10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeightSpacer(he: AppSizes.s15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableTextWidget(
                    text: 'LVL',
                    textAlign: TextAlign.center,
                    textStyle: appTextStyle(
                      fontSize: AppFontSizes.fs22,
                      color: AppColors.primaryDarkGrey,
                      fontWeight: FontWeight.w600,
                      letterSpacing: AppSizes.s2,
                    ),
                  ),
                  //TODO
                  WidthSpacer(wi: AppSizes.s15.w),
                  ReusableTextWidget(
                    text: '15',
                    textAlign: TextAlign.center,
                    textStyle: appTextStyle(
                      fontSize: AppFontSizes.fs25,
                      color: AppColors.primaryDarkOrange,
                      fontWeight: FontWeight.w600,
                      letterSpacing: AppSizes.s1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: AppValues.deviceWidth,
                height: AppValues.deviceHeight * 0.65,
                child: LottieBuilder.asset(
                  AppAnimations.man,
                  controller: _animationController!.view,
                ),
              ),
              ShadowBoxContainer(
                height: AppSizes.s25.h,
                width: AppValues.deviceWidth,
                color: AppColors.primaryLightGray,
                child: LinearPercentIndicator(
                  linearGradient:
                      LinearGradient(colors: AppColors.orangeColorGradient),
                  barRadius: const Radius.circular(AppConsts.kRadius),
                  backgroundColor: AppColors.primaryLightGray,
                  percent: 0.99,
                  lineHeight: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
