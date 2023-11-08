import 'bloc/onboarding_three_bloc.dart';import 'models/onboarding_three_model.dart';import 'package:flutter/material.dart';import 'package:jatin_kumar_s_application3/core/app_export.dart';import 'package:jatin_kumar_s_application3/widgets/custom_elevated_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class OnboardingThreeScreen extends StatelessWidget {const OnboardingThreeScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OnboardingThreeBloc>(create: (context) => OnboardingThreeBloc(OnboardingThreeState(onboardingThreeModelObj: OnboardingThreeModel()))..add(OnboardingThreeInitialEvent()), child: OnboardingThreeScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle12, height: 420.v, width: 428.h), SizedBox(height: 38.v), _buildInfoSection(context), SizedBox(height: 99.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.gray700, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 30.v), _buildSkipSection(context), SizedBox(height: 5.v)]))));}); } 
/// Section Widget
Widget _buildInfoSection(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 43.h), child: Column(children: [SizedBox(width: 338.h, child: Text("msg_let_s_discover_the".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineLarge!.copyWith(height: 1.50))), SizedBox(height: 5.v), SizedBox(width: 341.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50)))])); } 
/// Section Widget
Widget _buildSkipSection(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(width: 180.h, text: "lbl_skip".tr, buttonStyle: CustomButtonStyles.fillBlueGray, onPressed: () {onTapSkip(context);}), CustomElevatedButton(width: 180.h, text: "lbl_next".tr, margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapNext(context);})])); } 
/// Navigates to the letSYouInScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.letSYouInScreen, ); } 
/// Navigates to the letSYouInScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.letSYouInScreen, ); } 
 }
