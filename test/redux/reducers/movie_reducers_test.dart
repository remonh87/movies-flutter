import 'package:flutter_test/flutter_test.dart';
import 'package:moviesflutter/domain/Movie.dart';

import 'package:moviesflutter/redux/actions/add_movie_action.dart';
import 'package:moviesflutter/redux/reducers/movie_reducers.dart';
import 'package:moviesflutter/redux/state.dart';

void main() {


  test('Should increase the movielist with the newly added movie', () {
    Movie movie = new Movie('Spiderman');
    List<Movie> movies = new List<Movie>();
    AddMovieAction action = AddMovieAction(movie);
    AppState state = new AppState(movies);
    AppState newState = appStateReducers(state ,action);
    expect(newState.movies.length, 1);
  });
}