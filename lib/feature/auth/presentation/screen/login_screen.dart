import 'package:codeland/core/constant.dart';
import 'package:codeland/core/extension/media_query_extenstion.dart';
import 'package:codeland/core/extension/sizebox_extension.dart';
import 'package:codeland/core/extension/theme_extension.dart';
import 'package:codeland/feature/auth/presentation/screen/image_screen.dart';
import 'package:codeland/feature/auth/presentation/widget/custom_button.dart';
import 'package:codeland/feature/auth/presentation/widget/custom_rich_text.dart';
import 'package:codeland/feature/auth/presentation/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = DisplaySize(context).widthTo;
    final textTheme = ThemeExt(context).textTheme;

    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    void loginPress() {
      if (formKey.currentState!.validate()) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ImageScreen(),
          ),
        );
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: width / 1.2,
                  child: Center(
                    child: Image.asset(logo2),
                  ),
                ),
                10.height,
                CustomTextField(
                  width: width,
                  hintText: 'Username',
                  controller: usernameController,
                ),
                10.height,
                CustomTextField(
                  width: width,
                  hintText: 'Password',
                  controller: passwordController,
                  isObscure: true,
                ),
                20.height,
                CustomButton(
                  btnLabel: 'Login',
                  onPress: loginPress,
                  width: width,
                ),
                50.height,
                const CustomRichText(),
                50.height,
                Text(
                  copyright,
                  style: textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w500, fontSize: 11),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
