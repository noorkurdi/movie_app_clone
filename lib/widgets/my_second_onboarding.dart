import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';
import 'package:movies_app/bloc/states/app_states.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';
import 'package:movies_app/widgets/my_custom_outline.dart';

class MySecondOnboarding extends StatelessWidget {
  const MySecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return SizedBox(
          height: context.height,
          width: context.width,
          child: Stack(
            children: [
              Positioned(
                top: context.height * 0.3,
                left: -95,
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
                        width: context.width * 0.7,
                        height: context.width * 0.7,
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                AppStrings.peopleWatchingMovie,
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
                        'Enjoy with \n your friends',
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
                        "still don't know",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: context.height <= 600 ? 12 : 16,
                          fontWeight: FontWeight.w100,
                          color: AppColors.kWhiteColor.withOpacity(0.75),
                          fontFamily: AppStrings.secondAppFont,
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.07,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              appCubit.indDecreesmentEvent();
                            },
                            child: Container(
                              width: context.width * 0.29,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: AppColors.kWhiteColor.withOpacity(0.095),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 3,
                                          ),
                                          child: Icon(
                                            Icons.arrow_back_sharp,
                                            color: AppColors.kWhiteColor,
                                            size:
                                                context.height <= 600 ? 15 : 21,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          'previous',
                                          style: TextStyle(
                                            fontSize:
                                                context.height <= 600 ? 10 : 16,
                                            color: AppColors.kWhiteColor,
                                            fontWeight: FontWeight.w700,
                                            fontFamily:
                                                AppStrings.secondAppFont,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: context.width * 0.29,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: AppColors.kWhiteColor.withOpacity(0.095),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextButton(
                              onPressed: () {
                                appCubit.indIncrementEvent();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 2),
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                            fontSize:
                                                context.height <= 600 ? 10 : 16,
                                            color: AppColors.kWhiteColor,
                                            fontWeight: FontWeight.w700,
                                            fontFamily:
                                                AppStrings.secondAppFont,
                                          ),
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
                                            size:
                                                context.height <= 600 ? 15 : 22,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
