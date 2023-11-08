import 'bloc/view_ticket_bloc.dart';import 'models/view_ticket_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:jatin_kumar_s_application3/core/app_export.dart';import 'package:jatin_kumar_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:jatin_kumar_s_application3/widgets/app_bar/appbar_title.dart';import 'package:jatin_kumar_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:jatin_kumar_s_application3/widgets/custom_elevated_button.dart';import 'package:qr_flutter/qr_flutter.dart';class ViewTicketScreen extends StatelessWidget {const ViewTicketScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ViewTicketBloc>(create: (context) => ViewTicketBloc(ViewTicketState(viewTicketModelObj: ViewTicketModel()))..add(ViewTicketInitialEvent()), child: ViewTicketScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<ViewTicketBloc, ViewTicketState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 52.v), Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 34.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroupBlueGray900), fit: BoxFit.cover)), child: Column(children: [Text("msg_royale_president".tr, style: theme.textTheme.titleMedium), SizedBox(height: 11.v), Container(margin: EdgeInsets.symmetric(horizontal: 40.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillBlueGray, child: QrImageView(data: 'https://www.google.com', size: 224.adaptSize)), SizedBox(height: 18.v), Divider(color: appTheme.gray700), SizedBox(height: 53.v), _buildTicketDetails(context)]))])), bottomNavigationBar: _buildDownloadTicket(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_ticket".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildTicketDetails(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 7.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_name".tr, style: CustomTextStyles.bodyLargeGray40001), SizedBox(height: 5.v), Text("lbl_daniel_austin".tr, style: CustomTextStyles.titleMediumSemiBold_1)]), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_phone_number".tr, style: CustomTextStyles.bodyLargeGray40001), SizedBox(height: 6.v), Text("msg_1_123_456_789_000".tr, style: CustomTextStyles.titleMediumSemiBold_1)])])), SizedBox(height: 30.v), Padding(padding: EdgeInsets.only(left: 7.h, right: 45.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_check_in".tr, style: CustomTextStyles.bodyLargeGray40001), SizedBox(height: 6.v), Text("lbl_dec_16_2024".tr, style: CustomTextStyles.titleMediumSemiBold_1)]), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_check_out".tr, style: CustomTextStyles.bodyLargeGray40001), SizedBox(height: 6.v), Text("lbl_dec_20_2024".tr, style: CustomTextStyles.titleMediumSemiBold_1)])])), SizedBox(height: 30.v), Padding(padding: EdgeInsets.only(left: 7.h), child: Row(children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_hotel".tr, style: CustomTextStyles.bodyLargeGray40001), SizedBox(height: 8.v), Text("msg_royale_president2".tr, style: CustomTextStyles.titleMediumSemiBold_1)]), Padding(padding: EdgeInsets.only(left: 28.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_guest".tr, style: CustomTextStyles.bodyLargeGray40001), SizedBox(height: 7.v), Text("lbl_3".tr, style: CustomTextStyles.titleMediumSourceSansPro)]))]))])); } 
/// Section Widget
Widget _buildDownloadTicket(BuildContext context) { return CustomElevatedButton(text: "lbl_download_ticket".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
