import 'package:dio/dio.dart';
import 'package:notification_task/api/api_url.dart';
import 'package:notification_task/api/base_service.dart';
import 'package:notification_task/api/print_api_name_and_response.dart';
import 'package:notification_task/models/notification_model.dart';

class NotificationService {

  static Future<NotificationModel?> getAllNotifications() async {
    try {
      Response response = await BaseService()
          .get('${ApiUrl.getAllNotification}?pageNumber=1&pageSize=20');
      PrintAPINameAndResponse.printAPINameResponse(
          apiName: "Get all notification",
          apiUrl: '${ApiUrl.getAllNotification}?pageNumber=1&pageSize=20',
          response: response);
      if (response.statusCode == 200) {
        return NotificationModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }

}
