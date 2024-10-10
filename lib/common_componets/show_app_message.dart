import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
enum SnackBarType { error, success, normal }

class ShowAppMessage {
  static void showMessage(String message,
      {SnackBarType snackBarType = SnackBarType.success}) {
    switch (snackBarType) {
      case SnackBarType.error:
        showErrorSnackBar(message);
        break;
      case SnackBarType.normal:
        showNormalSnackBar(message);
        break;
      case SnackBarType.success:
        showSuccessSnackBar(message);
        break;
    }
  }

  static showErrorSnackBar(String message) {
    Get.closeCurrentSnackbar();
    Get.snackbar('Error', message,
        barBlur: 7,
        colorText: Colors.white,
        backgroundColor: AppColors.errorRedColor.withOpacity(.8),
        overlayColor: Colors.white);
  }

  static showNormalSnackBar(String message) {
    Get.closeCurrentSnackbar();
    Get.snackbar('', message,
        barBlur: 7,
        /*colorText: Colors.white,
        backgroundColor: Colors.redAccent,
        overlayColor: Colors.white*/);
  }

  static showSuccessSnackBar(String message) {
    Get.closeCurrentSnackbar();
    Get.snackbar('Success', message,
        barBlur: 7,
        colorText: Colors.white,
        backgroundColor: Colors.green,
        overlayColor: Colors.white);
  }
}
