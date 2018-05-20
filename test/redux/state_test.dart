
import 'package:flutter_test/flutter_test.dart';
import 'package:moviesflutter/domain/Movie.dart';
import 'package:moviesflutter/redux/state.dart';

void main() {

  test('Should have an appstate containing movies', () {
    List<Movie> movies = new List<Movie>();
    Movie movie = new Movie('Spiderman');
    movies.add(movie);
    AppState state = new AppState(movies);
    expect(state.movies.length, 1);
  });
}
