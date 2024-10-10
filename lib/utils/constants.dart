import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_componets/loader_widget.dart';
import '../common_componets/no_data_widget.dart';
import 'app_color.dart';
import 'app_textstyle.dart';


String? token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjI2NzM3NjY4NDQsImlkIjo5fQ.ad2FFZ7CjClRNIdhsNWsoNY0hLHHGxygydEGD96xbkc";
// CreateAccountModel? userDetails;
// Placemark? userPlaceMark;

height(double height) => Get.height * (0.01 * height / 8); // (size.height * .01)
width(double width) => Get.width * (0.01 * width / 3.6);// (size.width * .01)

// enum PaddingType { horizontal, vertical, all }
//
enum ApiResponseState { loading, success, error, noData }

const int tapAnimationDuration = 300;

double mainPagePadding = height(20);

Widget wBox(double width) => SizedBox(width: width);

Widget hBox(double height) => SizedBox(height: height);

Widget checkStatus(ApiResponseState status,{required Widget child, String? message,Widget? noDataChild,Widget? errorChild}) {
  switch (status) {
    case ApiResponseState.loading:
      return const LoaderWidget();
    case ApiResponseState.success:
      return child;
    case ApiResponseState.error:
      return errorChild ?? Center(child: Text(message ?? "Something went wrong", style: AppTextStyle.medium16(AppColors.darkCoffeeColor),));
    case ApiResponseState.noData:
      return noDataChild ?? NoDataWidget(message: message);
  }
}

String timeAgo(DateTime d) {
  Duration diff = DateTime.now().difference(d);
  if (diff.inDays > 365) {
    return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
  }
  if (diff.inDays > 30) {
    return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
  }
  if (diff.inDays > 7) {
    return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
  }
  if (diff.inDays > 0) {
    return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
  }
  if (diff.inHours > 0) {
    return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
  }
  if (diff.inMinutes > 0) {
    return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
  }
  return "just now";
}
