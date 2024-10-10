import 'package:get/get.dart';
import 'package:notification_task/api/api_services/notification_service.dart';
import 'package:notification_task/models/notification_model.dart';
import 'package:notification_task/utils/constants.dart';

class NotificationController extends GetxController {
  Rx<ApiResponseState> isNotificationDataLoading = ApiResponseState.loading.obs;

  var notificationList = <Item>[].obs;

  @override
  void onInit() {
    loadNotificationData();
    super.onInit();
  }

  loadNotificationData() async {
    isNotificationDataLoading.value = ApiResponseState.loading;
    var data = await NotificationService.getAllNotifications();
    if (data != null) {
      if (data.statusCode == 200) {
        notificationList.value = data.data!.items!;
      }
    }
    isNotificationDataLoading.value = ApiResponseState.success;
  }
}
