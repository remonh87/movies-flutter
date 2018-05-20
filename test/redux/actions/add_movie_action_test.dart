import 'package:flutter_test/flutter_test.dart';
import 'package:moviesflutter/domain/Movie.dart';

import 'package:moviesflutter/redux/actions/add_movie_action.dart';

void main() {

  String title = 'Spiderman';

  test('Should have an action containing movie', () {
    Movie movie = new Movie(title);
    AddMovieAction action = AddMovieAction(movie);
    expect(action.movie.title, title);
  });
}