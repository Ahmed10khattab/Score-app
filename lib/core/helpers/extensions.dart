import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
      String routeName, bool Function(dynamic route) param1,
      {Object? arguments,}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, param1, arguments: arguments);
  }

  void pop({bool? isTrue}) => Navigator.of(this).pop(
        isTrue ?? false,
      );



}


