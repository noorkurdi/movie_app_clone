import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';
import 'package:movies_app/widgets/my_custom_outline.dart';

// ignore: must_be_immutable
class MovieAppButton extends StatelessWidget {
  String buttonText;
  final VoidCallback onPressed;
  MovieAppButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: CustomOutline(
        strokeWidth: 3,
        radius: 20,
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.kPinkColor,
            AppColors.kGreenColor,
          ],
        ),
        width: 160,
        height: 38,
        padding: const EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.kPinkColor.withOpacity(0.2),
                AppColors.kGreenColor.withOpacity(0.2),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: context.height <= 600 ? 10 : 16,
                    color: AppColors.kWhiteColor,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppStrings.secondAppFont,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
