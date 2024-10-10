import 'package:flutter/material.dart';
import 'package:notification_task/models/notification_model.dart';
import 'package:notification_task/utils/app_textstyle.dart';
import 'package:notification_task/utils/constants.dart';
import 'package:notification_task/utils/image_path.dart';

class NotificationListWidget extends StatelessWidget {
  const NotificationListWidget({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black45,
      margin: EdgeInsets.symmetric(horizontal: width(12),vertical: height(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height(40),
            width: width(40),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(ImagePath.defaultProfileIcon))),
          ),
          wBox(width(10)),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: item.userName ?? '',
                style: AppTextStyle.medium16(Colors.white),
                children: [
                  TextSpan(
                      text: " ${item.title ?? ''}, ",
                      style: AppTextStyle.regular14(Colors.white)),
                  // TextSpan(text: ', ', style: TextStyle(color: Colors.black)),
                  TextSpan(
                    text: timeAgo(item.addedOn ?? DateTime.now()),
                    style: AppTextStyle.regular14(Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: height(40),
            width: width(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(ImagePath.foodImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
