import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textColor,
    required this.backgroundColor,
    this.borderRadius,
    required this.text,
    required this.onPressed,
    this.fontSize,
  });
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final VoidCallback onPressed;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12)),
            backgroundColor: backgroundColor),
        child: Text(text,
            style: Styles.textStyle18.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSize)),
      ),
    );
  }
}
