import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:flutter/material.dart';

class DialogManager {
  static Future<void> showAlertDialog({
    required String title,
    required String content,
    required BuildContext context,
    String? confirmText,
    VoidCallback? onConfirm,
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (_) {
        return AlertDialog(
          title: Text(
            title,
            style: const TextStyle(
              color: AppColors.blueColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  content,
                  style: const TextStyle(
                    color: AppColors.blueColor,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: onConfirm ?? () => Navigator.of(context).pop(),
              child: Text(confirmText ?? 'OK'),
            ),
          ],
        );
      },
    );
  }
}

// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
