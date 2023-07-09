import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';
import 'package:movies_app/bloc/states/app_states.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/core/utils/media_query_values.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/pages/movie_details_page.dart';
import 'package:movies_app/widgets/masked_image.dart';
import 'package:movies_app/widgets/my_custom_outline.dart';
import 'package:movies_app/widgets/search_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);

        return Scaffold(
          bottomNavigationBar: GlassmorphicContainer(
            width: context.width,
            height: context.height * 0.08,
            borderRadius: 0,
            linearGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.kWhiteColor.withOpacity(0.1),
                AppColors.kWhiteColor.withOpacity(.01),
              ],
            ),
            border: 0,
            blur: 10,
            borderGradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.kPinkColor, AppColors.kGreenColor],
            ),
            child: BottomAppBar(
              elevation: 0,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppStrings.home,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppStrings.playTv,
                      ),
                    ),
                  ),
                  const Expanded(child: Text('')),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppStrings.categories,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppStrings.download,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: InkWell(
            onTap: () {},
            child: CustomOutline(
              strokeWidth: 2.8,
              radius: context.width * 0.8,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.kPinkColor.withOpacity(0.8),
                  AppColors.kPinkColor.withOpacity(0.7),
                  AppColors.kGreenColor.withOpacity(0.4),
                  AppColors.kGreenColor,
                ],
                stops: const [0.35, 0.25, 0.7, 1],
              ),
              width: context.width * 0.13,
              height: context.width * 0.13,
              padding: const EdgeInsets.all(2),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    AppStrings.plus,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: AppColors.kBlackColor,
          extendBody: true,
          body: SizedBox(
            width: context.width,
            height: context.height,
            child: Stack(
              children: [
                Positioned(
                  top: -100,
                  left: -100,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.kGreenColor.withOpacity(0.5),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 200,
                        sigmaY: 200,
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: context.height * 0.4,
                  right: -88,
                  child: Container(
                    height: 166,
                    width: 166,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.kPinkColor.withOpacity(0.5),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 200,
                        sigmaY: 200,
                      ),
                      child: Container(
                        height: 166,
                        width: 166,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -100,
                  left: -100,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.kGreenColor.withOpacity(0.5),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 200,
                        sigmaY: 200,
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  bottom: false,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: context.height * 0.04,
                          ),
                          Text(
                            'What would you \n like to watch?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: context.height * 0.04,
                              color: AppColors.kWhiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const SearchFieldWidget(),
                          SizedBox(
                            height: context.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Popular movies',
                                  style: TextStyle(
                                    fontFamily: AppStrings.secondAppFont,
                                    color:
                                        AppColors.kWhiteColor.withOpacity(0.8),
                                    fontSize: context.height * 0.025,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.03,
                          ),
                          SizedBox(
                            height: context.height * 0.232,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: newMovie.length,
                              itemBuilder: (context, index) {
                                appCubit.maskEvent(index);
                                return GestureDetector(
                                  onTap: () {
                                    appCubit.movieType = 1;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MovieDetailsPage(
                                          index: index,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    height: context.height,
                                    width: 150,
                                    child: MaskedImage(
                                      asset: newMovie[index].moviePoster,
                                      mask: appCubit.mask,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Upcoming movies',
                                  style: TextStyle(
                                    fontFamily: AppStrings.secondAppFont,
                                    color:
                                        AppColors.kWhiteColor.withOpacity(0.8),
                                    fontSize: context.height * 0.025,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.03,
                          ),
                          SizedBox(
                            height: context.height * 0.232,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: upComingMovies.length,
                              itemBuilder: (context, index) {
                                appCubit.maskEvent(index);
                                return GestureDetector(
                                  onTap: () {
                                    appCubit.movieType = 2;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MovieDetailsPage(index: index),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    height: context.height,
                                    width: 150,
                                    child: MaskedImage(
                                      asset: upComingMovies[index].moviePoster,
                                      mask: appCubit.mask,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
