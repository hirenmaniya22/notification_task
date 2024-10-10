import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_task/app_pages/home/controller/notification_controller.dart';
import 'package:notification_task/app_pages/home/view/widgets/notification_list_widget.dart';
import 'package:notification_task/utils/constants.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: Obx(() {
        return checkStatus(controller.isNotificationDataLoading.value,
          child: ListView.builder(
            itemCount: controller.notificationList.length,
            itemBuilder: (context, index) => NotificationListWidget(item: controller.notificationList[index],),
          ),
        );
      }),
    );
  }
}
