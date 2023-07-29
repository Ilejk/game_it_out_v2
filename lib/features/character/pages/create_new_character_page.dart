import 'package:game_it_out_v2/common/exports/exports.dart';

class CreateNewCharacterPage extends StatefulWidget {
  const CreateNewCharacterPage({super.key});

  @override
  State<CreateNewCharacterPage> createState() => _CreateNewCharacterPageState();
}

class _CreateNewCharacterPageState extends State<CreateNewCharacterPage>
    with TickerProviderStateMixin {
  int isSelected = 0;
  AnimationController? _manAnimationController;
  AnimationController? _womanAnimationController;
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _manAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _womanAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _manAnimationController?.dispose();
    _womanAnimationController?.dispose();
    super.dispose();
  }

  void _startManAnimation() {
    _manAnimationController?.forward();
    _manAnimationController?.repeat();
  }

  void _stopManAnimation() {
    _manAnimationController?.stop();
  }

  void _startWomanAnimation() {
    _womanAnimationController?.forward();
    _womanAnimationController?.repeat();
  }

  void _stopWomanAnimation() {
    _womanAnimationController?.stop();
  }

  void _onManSelected() {
    setState(() {
      isSelected = 1;
      _startManAnimation();
      _stopWomanAnimation();
    });
  }

  void _onWomanSelected() {
    setState(() {
      isSelected = 2;
      _startWomanAnimation();
      _stopManAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    var isManSelected = isSelected == 1;
    var isWomanSelected = isSelected == 2;
    return Scaffold(
      backgroundColor: AppColors.primaryLightGray,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20.w,
            vertical: AppPadding.p20.h,
          ),
          child: Column(
            children: [
              ReusableTextWidget(
                text: AppString.chooseChara,
                textAlign: TextAlign.center,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs18,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              HeightSpacer(he: AppSizes.s30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChooseCharacterWidget(
                    animationController: _manAnimationController!,
                    onTap: _onManSelected,
                    animation: AppAnimations.man,
                    color: isManSelected
                        ? AppColors.white
                        : AppColors.primaryLightGray,
                  ),
                  ChooseCharacterWidget(
                    animationController: _womanAnimationController!,
                    onTap: _onWomanSelected,
                    animation: AppAnimations.woman,
                    color: isWomanSelected
                        ? AppColors.white
                        : AppColors.primaryLightGray,
                  ),
                ],
              ),
              HeightSpacer(he: AppSizes.s30.h),
              ReusableTextWidget(
                text: AppString.chooseName,
                textAlign: TextAlign.center,
                textStyle: appTextStyle(
                  fontSize: AppFontSizes.fs18,
                  color: AppColors.primaryDarkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              HeightSpacer(he: AppSizes.s15.h),
              ShadowBoxContainer(
                height: AppSizes.s60.h,
                width: AppValues.deviceWidth,
                color: AppColors.primaryLightGray,
                child: CustomTextField(
                  enabledBorderColor: AppColors.primaryLightGray,
                  bgColor: AppColors.primaryLightGray,
                  hintText: AppString.name,
                  hintStyle: appTextStyle(
                    fontSize: AppFontSizes.fs15,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.normal,
                  ),
                  controller: nameController,
                  textFieldStyle: appTextStyle(
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                  obscureText: false,
                ),
              ),
              HeightSpacer(he: AppSizes.s15.h),
              ShadowBoxContainer(
                height: AppSizes.s60.h,
                width: AppValues.deviceWidth,
                color: AppColors.primaryLightGray,
                child: CustomTextField(
                  enabledBorderColor: AppColors.primaryLightGray,
                  bgColor: AppColors.primaryLightGray,
                  hintText: AppString.surname,
                  hintStyle: appTextStyle(
                    fontSize: AppFontSizes.fs15,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.normal,
                  ),
                  controller: surnameController,
                  textFieldStyle: appTextStyle(
                    fontSize: AppFontSizes.fs18,
                    color: AppColors.primaryDarkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                  obscureText: false,
                ),
              ),
              HeightSpacer(he: AppSizes.s200.h),
              GestureDetector(
                onTap: () {
                  //TODO
                },
                child: Container(
                  height: AppSizes.s60.h,
                  width: AppValues.deviceWidth,
                  decoration: BoxDecoration(
                    color: AppColors.primaryDarkGrey,
                    borderRadius: BorderRadius.circular(AppConsts.kRadius),
                  ),
                  child: Center(
                    child: ReusableTextWidget(
                      text: AppString.start,
                      textAlign: TextAlign.center,
                      textStyle: appTextStyle(
                        fontSize: AppFontSizes.fs20,
                        color: AppColors.primaryLightGray,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
