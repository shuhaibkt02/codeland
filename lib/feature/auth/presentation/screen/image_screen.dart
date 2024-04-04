import 'dart:io';

import 'package:codeland/core/constant.dart';
import 'package:codeland/core/extension/media_query_extenstion.dart';
import 'package:codeland/core/extension/sizebox_extension.dart';
import 'package:codeland/core/extension/theme_extension.dart';
import 'package:codeland/feature/auth/presentation/widget/custom_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      _image = File(pickedImage.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = DisplaySize(context).widthTo;
    final textTheme = ThemeExt(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(imageUpload, style: textTheme.bodyMedium),
              ),
              // 10.height,
              SizedBox(
                height: width * 1.2,
                child: DottedBorder(
                  strokeWidth: 1,
                  dashPattern: const [3, 4],
                  color: Colors.grey.shade600,
                  child: Center(
                    child: (_image == null)
                        ? Icon(
                            Icons.image_outlined,
                            size: width / 3,
                          )
                        : Image.file(
                            _image!,
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
              ),
              // 40.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    btnLabel: 'Upload',
                    onPress: () async {
                      await _pickImage(ImageSource.gallery);
                    },
                    width: 100,
                    height: 30,
                    textStyle:
                        textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                  CustomButton(
                    btnLabel: 'View',
                    onPress: () {
                      setState(() {});
                    },
                    width: 100,
                    height: 30,
                    backgroundColor: Colors.grey.shade300,
                    textStyle: textTheme.bodySmall,
                  ),
                ],
              ),
              10.height,
            ],
          ),
        ),
      ),
    );
  }
}
