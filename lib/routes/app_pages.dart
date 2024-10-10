
import 'package:get/get.dart';
import 'package:notification_task/app_pages/home/controller/notification_controller.dart';
import 'package:notification_task/app_pages/home/view/notifiacation_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const initial = AppRoutes.mainNavigation;
  static const initial = AppRoutes.notificationView;
  static final routes = [
    GetPage(
      name: AppRoutes.notificationView,
      page: () => const NotificationView(),
      binding: BindingsBuilder(() => Get.lazyPut(() => NotificationController(),),)
    ),
  ];
}
