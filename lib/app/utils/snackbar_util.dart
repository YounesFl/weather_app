import 'package:flutter/material.dart';

abstract class SnackBarUtil {
  static void showFailureSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }

  static void showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        backgroundColor: Colors.green,
        content: Text(message),
      ),
    );
  }
}
