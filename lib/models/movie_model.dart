// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movies_app/core/utils/app_strings.dart';

class MovieModel {
  String movieName;
  String moviePoster;
  String movieReleaseYear;
  String movieCategory;
  String movieDuration;
  String movieRating;
  String movieSinopsis;
  List<String> movieCast;
  MovieModel({
    required this.movieName,
    required this.moviePoster,
    required this.movieReleaseYear,
    required this.movieCategory,
    required this.movieDuration,
    required this.movieRating,
    required this.movieSinopsis,
    required this.movieCast,
  });
}

List<MovieModel> newMovie = [
  MovieModel(
    movieName: 'Spider-Man: No Way Home',
    moviePoster: AppStrings.spiderManPoster,
    movieReleaseYear: '2021',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 20m',
    movieRating: '4.7',
    movieSinopsis:
        'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
    movieCast: ['Tom Holland', 'Zendaya', 'Benedict Cumberbatch'],
  ),
  MovieModel(
    movieName: 'The Matrix Resurrections',
    moviePoster: AppStrings.matrixPoster,
    movieReleaseYear: '2021',
    movieCategory: 'Action-Sci-Fi',
    movieDuration: '2h 28m',
    movieRating: '3.5',
    movieSinopsis:
        'Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.',
    movieCast: ['Keanu Reeves', 'Carrie-Anne Moss', 'Yahya Abdul-Mateen II'],
  ),
  MovieModel(
    movieName: 'Eternals',
    moviePoster: AppStrings.eternalsPoster,
    movieReleaseYear: '2021',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 36m',
    movieRating: '4.2',
    movieSinopsis:
        'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.',
    movieCast: ['Gemma Chan', 'Richard Madden', 'Angelina Jolie'],
  ),
];

List<MovieModel> upComingMovies = [
  MovieModel(
    movieName: 'Aquaman',
    moviePoster: AppStrings.aquaManPoster,
    movieReleaseYear: '2018',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 23m',
    movieRating: '4.3',
    movieSinopsis:
        'Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.',
    movieCast: ['Jason Momoa', 'Amber Heard', 'Willem Dafoe'],
  ),
  MovieModel(
    movieName: 'Batman',
    moviePoster: AppStrings.batManPoster,
    movieReleaseYear: '2022',
    movieCategory: 'Action-Crime-Drama',
    movieDuration: '2h 56m',
    movieRating: '4.7',
    movieSinopsis:
        'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.',
    movieCast: ['Robert Pattinson', 'Zoë Kravitz', 'Jeffrey Wright'],
  ),
  MovieModel(
    movieName: 'Sonic the Hedgehog 2',
    moviePoster: AppStrings.sonicPoster,
    movieReleaseYear: '2022',
    movieCategory: 'Animation-Action-Adventure',
    movieDuration: '2h 2m',
    movieRating: '4.5',
    movieSinopsis:
        'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.',
    movieCast: ['Ben Schwartz', 'Idris Elba', 'Colleen O\'Shaughnessey'],
  ),
];
