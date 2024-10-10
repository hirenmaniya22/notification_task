import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_task/routes/app_pages.dart';
import 'package:notification_task/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Notification Task',
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
      theme: AppTheme.lightTheme,
    );
  }
}

