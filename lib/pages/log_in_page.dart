import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';
import 'package:movies_app/bloc/states/app_states.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';
import 'package:movies_app/pages/home_page.dart';
import 'package:movies_app/pages/sign_up_page.dart';
import 'package:movies_app/widgets/movie_app_button.dart';
import 'package:movies_app/widgets/my_text_field.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
          extendBody: true,
          backgroundColor: AppColors.kBlackColor,
          body: Column(
            children: [
              SizedBox(
                width: context.width,
                height: context.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: context.height * 0.1,
                      left: -88,
                      child: Container(
                        height: 190,
                        width: 190,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kPinkColor,
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 300,
                            sigmaY: 100,
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
                          Text(
                            "Sign-in",
                            style: TextStyle(
                              color: AppColors.kWhiteColor,
                              fontSize: context.width * 0.1,
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.07,
                          ),
                          const MyTextField(
                            lableText: 'e-mail',
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: context.height * 0.03,
                          ),
                          Stack(
                            children: [
                              MyTextField(
                                lableText: 'password',
                                textInputType: appCubit.showPass == false
                                    ? TextInputType.visiblePassword
                                    : TextInputType.text,
                                hideInput:
                                    appCubit.showPass == false ? true : false,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 33,
                                  horizontal: 25,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    appCubit.showPass == false
                                        ? InkWell(
                                            onTap: () {
                                              appCubit.showPasswordEvent();
                                            },
                                            child: SvgPicture.asset(
                                              AppStrings.hidePassword,
                                              // ignore: deprecated_member_use
                                              color: AppColors.kWhiteColor
                                                  .withOpacity(0.6),
                                              width: context.width * 0.038,
                                              height: context.height * 0.038,
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              appCubit.showPasswordEvent();
                                            },
                                            child: Icon(
                                              Icons.remove_red_eye_outlined,
                                              size: context.height * 0.032,
                                              color: AppColors.kWhiteColor
                                                  .withOpacity(0.4),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.height * 0.07,
                          ),
                          MovieAppButton(
                            buttonText: 'Log in',
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                  (route) => false);
                            },
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                                (route) => false,
                              );
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                fontFamily: AppStrings.secondAppFont,
                                fontSize: context.width * 0.035,
                                color: AppColors.kWhiteColor.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
