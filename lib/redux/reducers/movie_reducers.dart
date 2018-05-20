import 'package:moviesflutter/domain/Movie.dart';
import 'package:moviesflutter/redux/actions/add_movie_action.dart';
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