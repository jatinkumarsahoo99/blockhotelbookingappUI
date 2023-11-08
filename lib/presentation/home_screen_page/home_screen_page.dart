import '../home_screen_page/widgets/hotelslist_item_widget.dart';import '../home_screen_page/widgets/martinezcannes_item_widget.dart';import 'bloc/home_screen_bloc.dart';import 'models/home_screen_model.dart';import 'models/hotelslist_item_model.dart';import 'models/martinezcannes_item_model.dart';import 'package:flutter/material.dart';import 'package:jatin_kumar_s_application3/core/app_export.dart';class HomeScreenPage extends StatefulWidget {const HomeScreenPage({Key? key}) : super(key: key);

@override HomeScreenPageState createState() =>  HomeScreenPageState();

static Widget builder(BuildContext context) { return BlocProvider<HomeScreenBloc>(create: (context) => HomeScreenBloc(HomeScreenState(homeScreenModelObj: HomeScreenModel()))..add(HomeScreenInitialEvent()), child: HomeScreenPage()); } 
 }
class HomeScreenPageState extends State<HomeScreenPage> with  AutomaticKeepAliveClientMixin<HomeScreenPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 30.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Column(children: [_buildHotelsList(context), SizedBox(height: 34.v), _buildRecentlyBookedList(context)])))]))))); } 
/// Section Widget
Widget _buildHotelsList(BuildContext context) { return SizedBox(height: 400.v, child: BlocSelector<HomeScreenBloc, HomeScreenState, HomeScreenModel?>(selector: (state) => state.homeScreenModelObj, builder: (context, homeScreenModelObj) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 24.h);}, itemCount: homeScreenModelObj?.hotelslistItemList.length ?? 0, itemBuilder: (context, index) {HotelslistItemModel model = homeScreenModelObj?.hotelslistItemList[index] ?? HotelslistItemModel(); return HotelslistItemWidget(model);});})); } 
/// Section Widget
Widget _buildRecentlyBookedList(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_recently_booked".tr, style: theme.textTheme.titleMedium), GestureDetector(onTap: () {onTapTxtSeeAll(context);}, child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumPrimary16))])), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: BlocSelector<HomeScreenBloc, HomeScreenState, HomeScreenModel?>(selector: (state) => state.homeScreenModelObj, builder: (context, homeScreenModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: homeScreenModelObj?.martinezcannesItemList.length ?? 0, itemBuilder: (context, index) {MartinezcannesItemModel model = homeScreenModelObj?.martinezcannesItemList[index] ?? MartinezcannesItemModel(); return MartinezcannesItemWidget(model);});}))]); } 
/// Navigates to the recentlyBookedScreen when the action is triggered.
onTapTxtSeeAll(BuildContext context) { NavigatorService.pushNamed(AppRoutes.recentlyBookedScreen, ); } 
 }
