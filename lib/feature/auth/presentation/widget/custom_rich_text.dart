import 'package:codeland/core/constant.dart';
import 'package:codeland/core/extension/sizebox_extension.dart';
import 'package:codeland/core/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = ThemeExt(context).textTheme;
    final color = ThemeExt(context).color;

    return SizedBox(
      // color: Colors.red,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(contactDetail, style: textTheme.bodySmall),
          8.height,
          rowText(
            textTheme: textTheme,
            color: color,
            langText: 'English, Kannada & Telugu : ',
            mob: '7406333800',
          ),
          5.height,
          rowText(
            textTheme: textTheme,
            color: color,
            langText: 'English, Kannada & Hindi : ',
            mob: '9071386515',
          ),
        ],
      ),
    );
  }

  RichText rowText(
      {required TextTheme textTheme,
      required ColorScheme color,
      required String langText,
      required String mob}) {
    return RichText(
      text: TextSpan(text: langText, style: textTheme.bodySmall, children: [
        TextSpan(
          text: mob,
          style: textTheme.bodySmall?.copyWith(
            color: color.primary,
            decoration: TextDecoration.underline,
            decorationColor: color.primary,
          ),
        ),
      ]),
    );
  }
}
