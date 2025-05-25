import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import '../view/helper/chucker_ui_helper.dart';

class ChuckerNotificationService {
  static final ChuckerNotificationService _instance = ChuckerNotificationService._internal();
  factory ChuckerNotificationService() => _instance;
  ChuckerNotificationService._internal();

  final FlutterLocalNotificationsPlugin _notificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: (NotificationResponse details) {
        // Handle notification tap
        ChuckerFlutter.showChuckerScreen();
      },
    );
  }

  Future<void> showNotification({
    required String title,
    required String body,
    required String method,
    required int statusCode,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'chucker_channel_id',
      'Chucker Notifications',
      channelDescription: 'Shows HTTP request notifications',
      importance: Importance.high,
      priority: Priority.high,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notificationsPlugin.show(
      DateTime.now().millisecondsSinceEpoch.hashCode,
      title,
      body,
      details,
    );
  }
} 