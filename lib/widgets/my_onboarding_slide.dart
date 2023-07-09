import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/media_query_values.dart';

class MyOnboardingSlide extends StatelessWidget {
  const MyOnboardingSlide({
    super.key,
    required this.appCubit,
  });

  final AppCubit appCubit;
  
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
            // child: const SizedBox(
            //   height: 100,
            //   width: 100,
            // ),
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
              sigmaX: 320,
              sigmaY: 50,
            ),
            child: const SizedBox(
              height: 250,
              width: 250,
            ),
          ),
        ),
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              ((index) {
                return GestureDetector(
                  onTap: () {
                    appCubit.listChangeEvent(index);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    height: 7,
                    width: index == appCubit.ind ? 7 : 15,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 4,
                    ),
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(10),
                      color: index == appCubit.ind
                          ? AppColors.kGreenColor
                          : AppColors.kWhiteColor.withOpacity(0.2),
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: context.height * 0.03,
          )
        ],
      ),
    ]);
  }
}
