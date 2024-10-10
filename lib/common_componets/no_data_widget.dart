import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_textstyle.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key,this.message});

  final String? message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message ?? 'No Data Found',style: AppTextStyle.medium16(AppColors.darkCoffeeColor),),
    );
  }
}
