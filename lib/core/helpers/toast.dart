import 'package:flutter/material.dart';

import 'package:toastification/toastification.dart';

class ToastManager {
  static void showErrorToast(String message, context, String description) {
    toastification.show(
     
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flatColored,
      autoCloseDuration: const Duration(seconds: 3),
      title: Text(
        
        message,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      description: Text(
        description,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      icon: const Icon(Icons.remove),
      alignment: Alignment.topCenter,
      direction: TextDirection.ltr,
      animationDuration: const Duration(milliseconds: 500),
      primaryColor: Colors.red,
      backgroundColor: const Color(0xFFFFA1A1),
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      borderRadius: BorderRadius.circular(8),
      showProgressBar: false,
      closeButtonShowType: CloseButtonShowType.always,
      closeOnClick: true,
      pauseOnHover: true,
      dragToClose: true,
      applyBlurEffect: false,
     
    );
  }
}
