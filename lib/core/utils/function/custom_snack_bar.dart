import 'package:flutter/material.dart';

void showCustomSnackBar(context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}
