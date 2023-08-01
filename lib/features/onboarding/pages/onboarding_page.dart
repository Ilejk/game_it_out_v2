import 'package:game_it_out_v2/common/exports/exports.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController pageController = PageController();
  bool isLastPage = false;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        isLastPage =
            pageController.page == pageController.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              OnBoardingPageOne(),
              OnBoardingPageTwo(),
              OnBoardingPageThree(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p20.w,
                vertical: AppPadding.p30.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: nextPage,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Ionicons.chevron_forward_circle,
                          size: AppSizes.s30,
                          color: AppColors.primaryDarkGrey,
                        ),
                        const WidthSpacer(wi: AppSizes.s5),
                        ReusableTextWidget(
                          text: isLastPage ? AppString.start : AppString.next,
                          textStyle: appTextStyle(
                            fontSize: AppFontSizes.fs15,
                            color: AppColors.primaryDarkGrey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: AppSizes.s10,
                      dotWidth: AppSizes.s15,
                      spacing: AppSizes.s10,
                      activeDotColor: AppColors.primaryDarkOrange,
                      dotColor: AppColors.secondaryDarkGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void nextPage() {
    bool isLastPage = pageController.page == 2;
    if (isLastPage) {
      GBM.storageService
          .setBool(AppConsts.STORAGE_DEVICE_OPEN_FIRST_TIME, true);
      GBM.pushAndReplaceNamed(context: context, routeName: Routes.loginRoute);
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease,
      );
    }
  }
}
