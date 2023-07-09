import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';
import 'package:movies_app/widgets/my_custom_outline.dart';

class MyFirstOnboardingBody extends StatelessWidget {
  const MyFirstOnboardingBody({
    super.key,
    required this.appCubit,
  });

  final AppCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: context.height,
      child: Stack(
        children: [
          Positioned(
            top: context.height * 0.1,
            left: -88,
            child: Container(
              height: 166,
              width: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kPinkColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 200,
                  sigmaY: 200,
                ),
                child: const SizedBox(
                  height: 166,
                  width: 166,
                ),
              ),
            ),
          ),
          Positioned(
            top: context.height * 0.3,
            right: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kGreenColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 200,
                  sigmaY: 200,
                ),
                child: const SizedBox(
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
          Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.height * 0.07,
                  ),
                  CustomOutline(
                    strokeWidth: 4,
                    radius: context.width * 0.8,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.kPinkColor,
                        AppColors.kPinkColor.withOpacity(0),
                        AppColors.kGreenColor.withOpacity(0.1),
                        AppColors.kGreenColor,
                      ],
                      stops: const [0.2, 0.4, 0.6, 1],
                    ),
                    width: context.width * 0.8,
                    height: context.width * 0.8,
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            AppStrings.virtualRealityPhoto,
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.09,
                  ),
                  Text(
                    'Watch movies in \n Virtual Reality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: context.height <= 600 ? 22 : 34,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kWhiteColor.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                  Text(
                    'Download and watch offline \n whenever you want',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: context.height <= 600 ? 12 : 16,
                      fontWeight: FontWeight.w100,
                      color: AppColors.kWhiteColor.withOpacity(0.75),
                      fontFamily: AppStrings.secondAppFont,
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      appCubit.indIncrementEvent();
                    },
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
                                'Next',
                                style: TextStyle(
                                  fontSize: context.height <= 600 ? 10 : 16,
                                  color: AppColors.kWhiteColor,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: AppStrings.secondAppFont,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 3,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_sharp,
                                    color: AppColors.kWhiteColor,
                                    size: context.height <= 600 ? 15 : 22,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.015,
                  ),
                  TextButton(
                    onPressed: () {
                      appCubit.skipEvent();
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: context.height <= 600 ? 10 : 16,
                        color: AppColors.kWhiteColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: AppStrings.secondAppFont,
                      ),
                    ),
                  ),
                  const Spacer(),
                  // MyOnboardingSlide(appCubit: appCubit),
                  // SizedBox(
                  //   height: context.height * 0.03,
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
