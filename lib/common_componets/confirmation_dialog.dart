import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_color.dart';
import '../utils/app_textstyle.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? confirmText;
  final String? cancelText;
  final Function onConfirm;
  final Function? onCancel;

  const ConfirmationDialog({super.key,
    required this.title,
    required this.subTitle,
    this.confirmText,
    this.cancelText,
    required this.onConfirm,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: AppTextStyle.semiBold18(Theme.of(context).primaryColor),
      ),
      content: Text(
        subTitle,
        style: AppTextStyle.regular16(AppColors.darkCoffeeColor),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if(onCancel != null) onCancel!();
            Get.back();
          },
          child: Text(
            cancelText ?? "No",
            style: AppTextStyle.regular16(AppColors.darkCoffeeColor),
          ),
        ),
        TextButton(
          onPressed: () {
            onConfirm();
          },
          child: Text(
            confirmText ?? "Yes",
            style: AppTextStyle.regular16(AppColors.darkCoffeeColor),
          ),
        ),
      ],
    );
  }
}