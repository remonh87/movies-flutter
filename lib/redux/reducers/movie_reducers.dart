import 'package:moviesflutter/redux/actions/movie_actions.dart';
import 'package:moviesflutter/redux/state.dart';

AppState appStateReducers(AppState state, dynamic action) {
  if (action is FetchMoviesAction){
    return fetchMovies(state);
  }
  return state;
}

AppState fetchMovies(AppState state){
  return new AppState(state.movies);

}