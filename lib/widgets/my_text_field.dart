import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';

class MyTextField extends StatelessWidget {
  final String? lableText;
  final TextInputType? textInputType;
  final bool? hideInput;
  const MyTextField({
    super.key,
    this.lableText,
    this.textInputType,
    this.hideInput,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: hideInput ?? false,
        style: TextStyle(
          fontSize: context.width * 0.055,
          color: AppColors.kWhiteColor,
          fontFamily: AppStrings.secondAppFont,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: lableText,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          labelStyle: TextStyle(
              color: AppColors.kWhiteColor.withOpacity(0.6),
              fontFamily: AppStrings.secondAppFont),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              width: 2.5,
              color: AppColors.kWhiteColor,
              style: BorderStyle.solid,
            ),
          ),
        ),
        cursorColor: AppColors.kPinkColor,
      ),
    );
  }
}
