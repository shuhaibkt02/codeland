
import 'package:codeland/core/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? isObscure;

  const CustomTextField({
    super.key,
    required this.width,
    required this.hintText,
    required this.controller,
    this.isObscure,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final textTheme = ThemeExt(context).textTheme;
    return TextFormField(
      style: textTheme.bodySmall,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $hintText';
        }
        return null;
      },
      obscureText: isObscure ?? false,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
