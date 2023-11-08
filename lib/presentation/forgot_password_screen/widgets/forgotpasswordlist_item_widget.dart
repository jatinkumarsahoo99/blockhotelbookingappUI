import '../models/forgotpasswordlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jatin_kumar_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ForgotpasswordlistItemWidget extends StatelessWidget {
  ForgotpasswordlistItemWidget(
    this.forgotpasswordlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ForgotpasswordlistItemModel forgotpasswordlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.all(26.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: CustomImageView(
              imagePath: forgotpasswordlistItemModelObj?.viaSMS,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 15.v,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  forgotpasswordlistItemModelObj.viaSMS1!,
                  style: CustomTextStyles.titleSmallGray400,
                ),
                SizedBox(height: 11.v),
                Text(
                  forgotpasswordlistItemModelObj
                      .oneHundredElevenThousandOneHun!,
                  style: CustomTextStyles.titleMedium16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
