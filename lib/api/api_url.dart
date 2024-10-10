
class ApiUrl {
  const ApiUrl._();
  static String domain = 'https://api.tastys.io/';
  static String imageBaseUrl = '';
  static String midUrl = 'api/';

  static String get baseUrl => domain + midUrl;

  static createAPIUrl(String endPoint) => baseUrl + endPoint;

  /// ------------------------- Notification -------------------------
  static String get getAllNotification => createAPIUrl('Notification/GetAll');
}