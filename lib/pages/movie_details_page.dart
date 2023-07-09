import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';
import 'package:movies_app/bloc/states/app_states.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';
import 'package:movies_app/models/movie_model.dart';

// ignore: must_be_immutable
class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Color(0xFF191918),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: context.height / 2,
                      width: context.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            appCubit.movieType == 1
                                ? newMovie[index].moviePoster
                                : upComingMovies[index].moviePoster,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: context.height * 0.05,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 3, color: Colors.white)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(AppStrings.back),
                              ),
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 3, color: Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(AppStrings.menu),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 9,
                    top: context.height * 0.42,
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFE53BB),
                            Color(0xff09fbd3),
                          ],
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kGreyColor,
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: AppColors.kWhiteColor,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: context.height / 2,
                      transform: Matrix4.translationValues(
                        0,
                        -context.height * 0.05,
                        0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: context.width * 0.7,
                            child: Column(
                              children: [
                                Text(
                                  appCubit.movieType == 1
                                      ? newMovie[index].movieName
                                      : upComingMovies[index].movieName,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: AppStrings.secondAppFont,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.kWhiteColor
                                          .withOpacity(0.85)),
                                ),
                                SizedBox(
                                  height: context.height <= 667 ? 10 : 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
