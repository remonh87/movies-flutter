import 'package:moviesflutter/domain/Movie.dart';

class AppState{
  final List<Movie>movies;

  AppState(this.movies);

  factory AppState.initial() => AppState(List.unmodifiable([]));
}