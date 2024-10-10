part of 'app_pages.dart';


abstract class AppRoutes {
  AppRoutes._(); // this basically makes it so you can't instantiate this class
  static const notificationView = _Paths.notificationView;
}



abstract class _Paths {
  _Paths._();
  static const String notificationView = '/notification_view';

}