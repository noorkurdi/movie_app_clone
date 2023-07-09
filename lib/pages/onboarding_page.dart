import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';
import 'package:movies_app/bloc/states/app_states.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/widgets/my_first_onboarding_body.dart';
import 'package:movies_app/widgets/my_onboarding_slide.dart';
import 'package:movies_app/widgets/my_second_onboarding.dart';
import 'package:movies_app/widgets/my_third_onboerding.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
          backgroundColor: AppColors.kBlackColor,
          extendBody: true,
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: PageView(
                  controller: appCubit.pageViewOnboardingController,
                  onPageChanged: (int value) {
                    appCubit.pageViewChangeEvent(value);
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyFirstOnboardingBody(appCubit: appCubit),
                    const MySecondOnboarding(),
                    const MyThirdOnboarding(),
                  ],
                ),
              ),
              MyOnboardingSlide(appCubit: appCubit),
            ],
          ),
        );
      },
    );
  }
}
