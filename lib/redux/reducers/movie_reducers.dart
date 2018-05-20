import 'package:moviesflutter/domain/Movie.dart';
import 'package:moviesflutter/redux/actions/add_movie_action.dart';
import 'package:moviesflutter/redux/state.dart';


AppState appStateReducers(AppState state, dynamic action) {
  if (action is AddMovieAction){
    return addMovie(state.movies, action);
  }
  return state;
}

AppState addMovie(List<Movie> movies, AddMovieAction action){
  return new AppState(List.from(movies)..add(action.movie));

}