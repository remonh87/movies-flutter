import 'package:moviesflutter/domain/Movie.dart';

class AppState{
  final List<Movie>movies;

  AppState(this.movies);


  factory AppState.initial() => AppState(defaultMovies());
}

List<Movie>defaultMovies(){
  Movie movie1 = new Movie('Batman');
  Movie movie2 = new Movie('Superman');
  List<Movie> movies = new List<Movie>();
  movies.add(movie1);
  movies.add(movie2);
  return movies;
}