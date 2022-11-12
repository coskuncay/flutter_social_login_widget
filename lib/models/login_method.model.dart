import 'package:flutter/material.dart';

class LoginMethod {
  /// [Function] of button tap event
  void Function(int) onMethodTap;

  /// icon of login method
  Image image;

  LoginMethod({
    required this.onMethodTap,
    required this.image,
  });
}
