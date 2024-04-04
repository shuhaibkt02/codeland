import 'package:codeland/core/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnLabel;
  final VoidCallback onPress;
  final double width;
  final double? height;
  final Color? backgroundColor;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.btnLabel,
    required this.onPress,
    required this.width,
    this.height,
    this.backgroundColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = ThemeExt(context).textTheme;
    final color = ThemeExt(context).color;

    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? color.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        fixedSize: Size(width, height ?? 55),
      ),
      child:
          Text(btnLabel, style: textStyle ?? textTheme.bodyLarge?.copyWith()),
    );
  }
}
