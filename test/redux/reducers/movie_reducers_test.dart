import 'package:flutter_test/flutter_test.dart';
import 'package:moviesflutter/domain/Movie.dart';

import 'package:moviesflutter/redux/actions/movie_actions.dart';
import 'package:moviesflutter/redux/reducers/movie_reducers.dart';
import 'package:moviesflutter/redux/state.dart';

void main() {


  test('Should return the movielist from appstate when dispatching fetchmovies', () {
    Movie movie = new Movie('Spiderman');
    List<Movie> movies = new List<Movie>();
    movies.add(movie);
    FetchMoviesAction action = FetchMoviesAction();
    AppState state = new AppState(movies);
    AppState newState = appStateReducers(state ,action);
    expect(newState.movies.length, 1);
  });
}