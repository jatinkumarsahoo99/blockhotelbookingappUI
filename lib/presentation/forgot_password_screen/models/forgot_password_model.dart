// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'forgotpasswordlist_item_model.dart';/// This class defines the variables used in the [forgot_password_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ForgotPasswordModel extends Equatable {ForgotPasswordModel({this.forgotpasswordlistItemList = const []}) {  }

List<ForgotpasswordlistItemModel> forgotpasswordlistItemList;

ForgotPasswordModel copyWith({List<ForgotpasswordlistItemModel>? forgotpasswordlistItemList}) { return ForgotPasswordModel(
forgotpasswordlistItemList : forgotpasswordlistItemList ?? this.forgotpasswordlistItemList,
); } 
@override List<Object?> get props => [forgotpasswordlistItemList];
 }
