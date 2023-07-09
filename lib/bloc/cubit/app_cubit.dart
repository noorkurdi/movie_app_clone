import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/states/app_states.dart';
import 'package:movies_app/core/utils/app_strings.dart';
import 'package:movies_app/models/movie_model.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());
  static AppCubit get(context) => BlocProvider.of(context);
  ////controllers/////
  PageController pageViewOnboardingController = PageController(initialPage: 0);
  //////variables/////
  int ind = 0;
  int p = 0;
  int? movieType;
  String? mask;

  bool showPass = false;

  //////Events//////

  void initialStateEvent() {}

  void listChangeEvent(int index) {
    ind = index;
    pageViewOnboardingController.animateToPage(ind,
        duration: const Duration(
          milliseconds: 700,
        ),
        curve: Curves.easeInOut);
    emit(RefreshUIAppState());
  }

  void indIncrementEvent() {
    ind++;
    pageViewOnboardingController.animateToPage(ind,
        duration: const Duration(
          milliseconds: 700,
        ),
        curve: Curves.easeInOut);
    emit(RefreshUIAppState());
  }

  void indDecreesmentEvent() {
    ind--;
    pageViewOnboardingController.animateToPage(ind,
        duration: const Duration(
          milliseconds: 700,
        ),
        curve: Curves.easeInOut);
    emit(RefreshUIAppState());
  }

  void skipEvent() {
    ind = 2;
    pageViewOnboardingController.animateToPage(ind,
        duration: const Duration(
          milliseconds: 700,
        ),
        curve: Curves.easeInOut);
    emit(RefreshUIAppState());
  }

  void pageViewChangeEvent(int page) {
    p = page;
    ind = page;
    emit(RefreshUIAppState());
  }

  void showPasswordEvent() {
    showPass == true ? showPass = false : showPass = true;
    emit(RefreshUIAppState());
  }

  void maskEvent(int index) {
    if (index == 0) {
      mask = AppStrings.appMaskFirstIndex;
    } else if (index == newMovie.length - 1) {
      mask = AppStrings.appMaskLastIndex;
    } else {
      mask = AppStrings.appMask;
    }
  }
}
