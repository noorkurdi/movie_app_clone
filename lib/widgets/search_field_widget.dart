import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kGreyColor.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        height: context.height * 0.04,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              SvgPicture.asset(
                AppStrings.search,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    fontFamily: AppStrings.secondAppFont,
                    color: AppColors.kWhiteColor.withOpacity(0.6),
                    fontSize: 17,
                  ),
                  decoration: InputDecoration(
                    hintText: 'search',
                    border: InputBorder.none,
                    isDense: true,
                    hintStyle: TextStyle(
                      fontFamily: AppStrings.secondAppFont,
                      fontSize: 17,
                      color: AppColors.kWhiteColor.withOpacity(0.6),
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(AppStrings.mic),
            ],
          ),
        ),
      ),
    );
  }
}
